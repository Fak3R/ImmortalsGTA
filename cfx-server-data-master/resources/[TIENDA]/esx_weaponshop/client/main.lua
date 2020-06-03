ESX = nil

cachedData = {
	["attachedComponents"] = {}
}

Citizen.CreateThread(function()
	while not ESX do
		--Fetching esx library, due to new to esx using this.

		TriggerEvent("esx:getSharedObject", function(library) 
			ESX = library 
		end)

		Citizen.Wait(0)
	end

	if Config.Debug then
		RemoveAllPedWeapons(PlayerPedId())

		ESX.UI.Menu.CloseAll()
	end
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(playerData)
	ESX.PlayerData = playerData
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(newJob)
	ESX.PlayerData["job"] = newJob
end)

Citizen.CreateThread(function()
	Citizen.Wait(500) -- Init time.

	if Config.StoreBlips then
		for shopIndex, shopData in ipairs(Config.WeaponShops) do
			local storeBlip = AddBlipForCoord(shopData["clerkMarker"]["position"])
	
			SetBlipSprite(storeBlip, 110)
			SetBlipScale(storeBlip, 1.0)
			SetBlipColour(storeBlip, 2)
		
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(shopData["name"])
			EndTextCommandSetBlipName(storeBlip)
		end
	end

	SpawnClerks()

	while true do
		local sleepThread = 500

		local ped = cachedData["ped"]
		local pedCoords = GetEntityCoords(ped)

		for shopIndex, shopData in ipairs(Config.WeaponShops) do
			local dstCheck = #(pedCoords - shopData["clerkMarker"]["position"])

			if dstCheck <= Config.MarkerData["range"] then
				sleepThread = 5

				if dstCheck <= Config.MarkerData["size"]["x"] - 0.35 then
					local clerkHandle = cachedData["clerks"][shopData["name"]]

					local usable = not IsEntityDead(clerkHandle)
					local displayText = usable and "~INPUT_CONTEXT~ Talk with the clerk." or shopData["name"] .. " is closed, come back later."

					if IsControlJustPressed(0, 38) and usable then
						OpenWeaponMenu(shopData)
					end

					ESX.ShowHelpNotification(displayText)
				end

				DrawScriptMarker({
					["type"] = Config.MarkerData["type"],
					["size"] = Config.MarkerData["size"],
					["color"] = Config.MarkerData["color"],
					["pos"] = shopData["clerkMarker"]["position"] - vector3(0.0, 0.0, 0.985)
				})
			end
		end

		Citizen.Wait(sleepThread)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1500)

		local ped = PlayerPedId()

		if cachedData["ped"] ~= ped then
			cachedData["ped"] = ped
		end
	end
end)