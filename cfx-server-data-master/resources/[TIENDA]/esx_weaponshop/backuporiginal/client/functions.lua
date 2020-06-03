OpenWeaponMenu = function(storeData)
    InitiateCamera(storeData)

    local menuElements = GetWeaponMenuElements(Config.DefaultWeapon["model"])

    InitiateWeapon(storeData["object"]["position"], Config.DefaultWeapon)

    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "weapon_clerk", {
        ["title"] = storeData["name"],
        ["align"] = Config.AlignMenu,
        ["elements"] = menuElements
    }, function(menuData, menuHandle)
        local current = menuData["current"]

        if current["name"] == "ammo" then
            ESX.TriggerServerCallback("james_weaponshop:validatePurchase", function(validated)
                DrawBusySpinner("Validating...")

                Citizen.Wait(750)

                if validated then
                    DrawBusySpinner("Validation completed...")

                    PlaySoundFrontend(-1, "WEAPON_PURCHASE", "HUD_AMMO_SHOP_SOUNDSET", true)

                    local currentWeapon = cachedData["currentWeapon"]

                    local currentAmmo = GetAmmoInPedWeapon(cachedData["ped"], GetHashKey(currentWeapon["model"]))

                    SetPedAmmo(cachedData["ped"], GetHashKey(currentWeapon["model"]), currentAmmo + 30)
                else
                    DrawBusySpinner("Validation failed, check cash...")

                    Citizen.Wait(750)
                end

                RemoveLoadingPrompt()
            end, current["price"])
        else
            cachedData["purchasing"] = true

            ConfirmPurchase(function(totalPayment)
                if totalPayment then
                    ESX.TriggerServerCallback("james_weaponshop:validatePurchase", function(validated)
                        DrawBusySpinner("Validating...")
    
                        Citizen.Wait(750)
    
                        if validated then
                            DrawBusySpinner("Validation completed...")
    
                            PlaySoundFrontend(-1, "WEAPON_PURCHASE", "HUD_AMMO_SHOP_SOUNDSET", true)
                    
                            local weaponObject = cachedData["weaponObject"]
                    
                            menuHandle.close()
                    
                            HandOverWeapon(storeData)
                        else
                            ESX.ShowNotification("You don't have enough cash.")
    
                            DrawBusySpinner("Validation failed...")
    
                            Citizen.Wait(750)
                        end

                        RemoveLoadingPrompt()
                    end, totalPayment)
                end
            end)
        end
    end, function(menuData, menuHandle)
        PlaySoundFrontend(-1, "BACK", "HUD_AMMO_SHOP_SOUNDSET", true)

        menuHandle.close()

        DeleteCamera()
        DeleteWeapon(cachedData["weaponObject"])
    end, function(menuData, menuHandle)
        local currentElement = menuData["current"]

        PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", true)

        local weaponObject = cachedData["weaponObject"]

        if currentElement["name"] == "weapon_slider" then
            local lastWeapon = cachedData["currentWeapon"]

            local currentWeapon = Config.Weapons[currentElement["value"] + 1]

            if currentWeapon["model"] == lastWeapon["model"] then return end

            menuData["elements"] = GetWeaponMenuElements(currentWeapon["model"], currentElement)

            menuHandle.setElements(menuData["elements"])

            menuHandle.refresh()

            InitiateWeapon(storeData["object"]["position"], currentWeapon)
        elseif currentElement["name"] == "weapon_component" then
            HandleComponentElement(currentElement)
        elseif currentElement["name"] == "weapon_tint" then
            local tintValue = currentElement["value"]

            SetWeaponObjectTintIndex(weaponObject, tintValue)

            if tintValue > 0 then
                cachedData["attachedComponents"]["tint"] = {
                    ["price"] = 500
                }
            else
                cachedData["attachedComponents"]["tint"] = nil
            end
        end
    end)
end

ConfirmPurchase = function(callback)
    local menuElements = {
        {
            ["label"] = "Validate purchase.",
            ["action"] = "yes"
        },
        {
            ["label"] = "Cancel purchase.",
            ["action"] = "no"
        }
    }

    local currentWeapon = cachedData["currentWeapon"]

    local totalCost = currentWeapon["price"]

    for componentType, attachedComponentData in pairs(cachedData["attachedComponents"]) do
        totalCost = totalCost + attachedComponentData["price"]
    end

    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "weapon_clerk_confirm", {
        ["title"] = "Total cost: $" .. totalCost,
        ["align"] = Config.AlignMenu,
        ["elements"] = menuElements
    }, function(menuData, menuHandle)
        local currentAction = menuData["current"]["action"]

        menuHandle.close()

        callback(currentAction == "yes" and totalCost or false)
    end, function(menuData, menuHandle)
        menuHandle.close()
    end)
end

HandleComponentElement = function(currentElement)
    local weaponObject = cachedData["weaponObject"]

    local currentWeapon = cachedData["currentWeapon"]

    local componentLocation = currentElement["component"]
    local componentIndex = currentElement["value"]

    local attachedComponent = cachedData["attachedComponents"][componentLocation]

    if attachedComponent then
        RemoveWeaponComponentFromWeaponObject(weaponObject, GetHashKey(attachedComponent["component"]))

        attachedComponent = false
    end

    if componentIndex == 0 then
        return
    end

    local componentData = Config.WeaponComponents[currentWeapon["model"]][componentLocation][componentIndex]

    cachedData["attachedComponents"][componentLocation] = componentData

    GiveWeaponComponentToWeaponObject(weaponObject, GetHashKey(componentData["component"]))
end

GetWeaponMenuElements = function(weaponModel, weaponElement)
    local ammoPrice = Config.AmmoTypes[GetPedAmmoTypeFromWeapon(cachedData["ped"], GetHashKey(Config.Weapons[weaponElement and weaponElement["value"] + 1 or 1]["model"]))] * 30

    local menuElements = {
        {
            ["name"] = "weapon_slider",
            ["label"] = "Weapon",
            ["max"] = #Config.Weapons - 1,
            ["min"] = 0,
            ["value"] = weaponElement and weaponElement["value"] or 0,
            ["type"] = "slider",
            ["options"] = {}
        },
        {
            ["name"] = "ammo",
            ["label"] = "Buy 30x ammo $" .. ammoPrice,
            ["price"] = ammoPrice
        }
    }

    for weaponIndex, weaponData in ipairs(Config.Weapons) do
        table.insert(menuElements[1]["options"], GetWeaponLabel(weaponData["model"]) .. " | $" .. weaponData["price"])
    end

    for componentLocation, weaponComponents in pairs(Config.WeaponComponents[string.upper(weaponModel)]) do
        local componentElement = {
            ["name"] = "weapon_component",
            ["component"] = componentLocation,
            ["label"] = componentLocation,
            ["max"] = #weaponComponents,
            ["min"] = 0,
            ["value"] = 0,
            ["type"] = "slider",
            ["options"] = {
                "None"
            }
        }

        for componentIndex, componentData in ipairs(weaponComponents) do
            table.insert(componentElement["options"], "$" .. componentData["price"])
        end

        table.insert(menuElements, componentElement)
    end

    local componentElement = {
        ["name"] = "weapon_tint",
        ["label"] = "Tint",
        ["max"] = GetWeaponTintCount(GetHashKey(weaponModel)) - 1,
        ["min"] = 0,
        ["value"] = 0,
        ["type"] = "slider"
    }

    table.insert(menuElements, componentElement)

    return menuElements
end

SpawnClerks = function()
    cachedData["clerks"] = {}

    for shopIndex, shopData in ipairs(Config.WeaponShops) do
        WaitForModel(shopData["clerk"]["model"])

        local pedHandle = CreatePed(5, shopData["clerk"]["model"], shopData["clerk"]["position"], shopData["clerk"]["heading"], false)

        SetEntityAsMissionEntity(pedHandle, true, true)
        SetBlockingOfNonTemporaryEvents(pedHandle, true)

        cachedData["clerks"][shopData["name"]] = pedHandle

        SetModelAsNoLongerNeeded(shopData["clerk"]["model"])
    end
end

HandOverWeapon = function(storeData)
    DeleteCamera()

    local weaponModel = cachedData["currentWeapon"]["model"]

    local weaponObject = cachedData["weaponObject"]
    local clerkHandle = cachedData["clerks"][storeData["name"]]

    TaskTurnPedToFaceEntity(cachedData["ped"], clerkHandle, 500)

    GiveWeaponObjectToPed(weaponObject, cachedData["ped"])
    GiveWeaponObjectToPed(weaponObject, clerkHandle)
    
    SetCurrentPedWeapon(cachedData["ped"], GetHashKey("WEAPON_UNARMED"), true)
    SetCurrentPedWeapon(clerkHandle, GetHashKey("WEAPON_UNARMED"), true)
    
    local anim = "rifle"

    if GetWeapontypeGroup(weaponModel) == 416676503 then
        anim = "pistol"
    end

    PlayAnimation(clerkHandle, "mp_cop_armoury", anim .. "_on_counter_cop")
    
    Wait(1100)
    
    SetCurrentPedWeapon(clerkHandle, GetHashKey(weaponModel), true)
    
    PlayAnimation(cachedData["ped"], "mp_cop_armoury", anim .. "_on_counter")
    
    Wait(3100)
    
    RemoveWeaponFromPed(clerkHandle, GetHashKey(weaponModel))
    
    Citizen.Wait(60)
    
    SetCurrentPedWeapon(cachedData["ped"], GetHashKey(weaponModel), true)

    cachedData["purchasing"] = false
end

InitiateCamera = function(storeData)
    SetEntityCoords(cachedData["ped"], storeData["clerkMarker"]["position"] - vector3(0.0, 0.0, 0.985))
    SetEntityHeading(cachedData["ped"], storeData["clerkMarker"]["heading"])

    cachedData["weaponCamera"] = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

    local camInformation = storeData["camera"]

    SetCamCoord(cachedData["weaponCamera"], camInformation["x"], camInformation["y"], camInformation["z"])
    SetCamRot(cachedData["weaponCamera"], camInformation["rotationX"], camInformation["rotationY"], camInformation["rotationZ"])

    RenderScriptCams(true, true, 500)
end

DeleteCamera = function()
    RenderScriptCams(false, true, 500)

    while IsCamRendering(cachedData["weaponCamera"]) do
        Citizen.Wait(0)
    end

    DestroyCam(cachedData["weaponCamera"])
end

DeleteWeapon = function(entity)
    if DoesEntityExist(entity) then
        DeleteEntity(entity)
    end
end

InitiateWeapon = function(weaponLocation, weaponData)
    cachedData["attachedComponents"] = {}

    local lastRotation = vector3(0.0, 0.0, 0.0)

    if DoesEntityExist(cachedData["weaponObject"]) then
        lastRotation = GetEntityRotation(cachedData["weaponObject"])

        DeleteEntity(cachedData["weaponObject"])
    end

    cachedData["currentWeapon"] = weaponData

    local weaponModel = GetHashKey(weaponData["model"])

    RequestWeaponAsset(weaponModel, 31, 0)

    while not HasWeaponAssetLoaded(weaponModel) do
        Citizen.Wait(0)
    end

    local weaponObject = CreateWeaponObject(weaponModel, Config.DefaultAmmo or 120, weaponLocation, false, 0.0, false)

    SetEntityRotation(weaponObject, lastRotation)

    FreezeEntityPosition(weaponObject, true)

    cachedData["weaponObject"] = weaponObject

    Citizen.CreateThread(function()
        while DoesEntityExist(weaponObject) and ESX.UI.Menu.IsOpen("default", GetCurrentResourceName(), "weapon_clerk") do
            Citizen.Wait(5)

            SetEntityRotation(weaponObject, GetEntityRotation(weaponObject) + vector3(0.0, 0.0, 0.6))
        end

        while cachedData["purchasing"] do
            Citizen.Wait(0)
        end

        DeleteWeapon(weaponObject)
    end)
end

DrawScriptMarker = function(markerData)
    DrawMarker(markerData["type"] or 1, markerData["pos"] or vector3(0.0, 0.0, 0.0), 0.0, 0.0, 0.0, (markerData["type"] == 6 and -90.0 or markerData["rotate"] and -180.0) or 0.0, 0.0, 0.0, markerData["size"] or vector3(1.0, 1.0, 1.0), markerData["color"] or vector3(150, 150, 150), 100, false, true, 2, false, false, false, false)
end

PlayAnimation = function(ped, dict, anim, settings)
	if dict then
        Citizen.CreateThread(function()
            RequestAnimDict(dict)

            while not HasAnimDictLoaded(dict) do
                Citizen.Wait(100)
            end

            if settings == nil then
                TaskPlayAnim(ped, dict, anim, 1.0, -1.0, 1.0, 0, 0, 0, 0, 0)
            else 
                local speed = 1.0
                local speedMultiplier = -1.0
                local duration = 1.0
                local flag = 0
                local playbackRate = 0

                if settings["speed"] then
                    speed = settings["speed"]
                end

                if settings["speedMultiplier"] then
                    speedMultiplier = settings["speedMultiplier"]
                end

                if settings["duration"] then
                    duration = settings["duration"]
                end

                if settings["flag"] then
                    flag = settings["flag"]
                end

                if settings["playbackRate"] then
                    playbackRate = settings["playbackRate"]
                end

                TaskPlayAnim(ped, dict, anim, speed, speedMultiplier, duration, flag, playbackRate, 0, 0, 0)
            end
      
            RemoveAnimDict(dict)
		end)
	else
		TaskStartScenarioInPlace(ped, anim, 0, true)
	end
end

FadeOut = function(duration)
    DoScreenFadeOut(duration)
    
    while not IsScreenFadedOut() do
        Citizen.Wait(0)
    end
end

FadeIn = function(duration)
    DoScreenFadeIn(500)

    while not IsScreenFadedIn() do
        Citizen.Wait(0)
    end
end

WaitForModel = function(model)
    if not IsModelValid(model) then
        return
    end

	if not HasModelLoaded(model) then
		RequestModel(model)
	end
	
	while not HasModelLoaded(model) do
		Citizen.Wait(0)
	end
end

DrawBusySpinner = function(text)
    SetLoadingPromptTextEntry("STRING")
    AddTextComponentSubstringPlayerName(text)
    ShowLoadingPrompt(3)
end

GetWeaponLabel = function(weaponModel)
    local playerInventory = ESX.PlayerData["inventory"]

    if not playerInventory then playerInventory = ESX.GetPlayerData()["inventory"] end

    for itemIndex, itemData in ipairs(playerInventory) do
        if string.lower(itemData["name"]) == string.lower(weaponModel) then
            return itemData["label"]
        end
    end

    return weaponModel
end