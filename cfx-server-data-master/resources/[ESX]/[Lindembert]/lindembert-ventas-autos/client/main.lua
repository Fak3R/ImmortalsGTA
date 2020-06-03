ESX = nil

PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(10)

        TriggerEvent("esx:getSharedObject", function(response)
            ESX = response
        end)
    end

    if ESX.IsPlayerLoaded() then
		PlayerData = ESX.GetPlayerData()

		RemoveVehicles()

		Citizen.Wait(500)

		LoadSellPlace()

		SpawnVehicles()
    end
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(response)
	PlayerData = response
	
	LoadSellPlace()

	SpawnVehicles()
end)

RegisterNetEvent("lindembert-ventas-autos:refreshVehicles")
AddEventHandler("lindembert-ventas-autos:refreshVehicles", function()
	RemoveVehicles()

	Citizen.Wait(500)

	SpawnVehicles()
end)

function LoadSellPlace()
	Citizen.CreateThread(function()

		local SellPos = Config.SellPosition

		local Blip = AddBlipForCoord(SellPos["x"], SellPos["y"], SellPos["z"])
		SetBlipSprite (Blip, 147)
		SetBlipDisplay(Blip, 4)
		SetBlipScale  (Blip, 0.8)
		SetBlipColour (Blip, 52)
		SetBlipAsShortRange(Blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Vehiculos Usados")
		EndTextCommandSetBlipName(Blip)

		while true do
			local sleepThread = 500

			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)

			local dstCheck = GetDistanceBetweenCoords(pedCoords, SellPos["x"], SellPos["y"], SellPos["z"], true)

			if dstCheck <= 10.0 then
				sleepThread = 5

				if dstCheck <= 5.2 then
					--ESX.Game.Utils.DrawText3D(SellPos, "[E] Open Menu", 0.4)
					Drawing.draw3DText(SellPos["x"],SellPos["y"], SellPos["z"] -1.1,"~y~ Presione ~r~[E]~y~ para vender tu vehiculo ", 4, 0.2, 0.1, 255, 255, 255, 215)
					if IsControlJustPressed(0, 38) then
						if IsPedInAnyVehicle(ped, false) then
							OpenSellMenu(GetVehiclePedIsUsing(ped))
						else
							ESX.ShowNotification("Tu no estas dentro de un  ~g~vehiculo~s~")
						end
					end
				end
			end

			for i = 1, #Config.VehiclePositions, 1 do
				if Config.VehiclePositions[i]["entityId"] ~= nil then
					local pedCoords = GetEntityCoords(ped)
					local vehCoords = GetEntityCoords(Config.VehiclePositions[i]["entityId"])

					local dstCheck = GetDistanceBetweenCoords(pedCoords, vehCoords, true)

					if dstCheck <= 2.0 then
						sleepThread = 5

						
						Drawing.draw3DText(vehCoords["x"],vehCoords["y"], vehCoords["z"] -1.1,"~g~ \n Ventas Lin Lin ~r~ \n For Sale \n ~y~$/ ".. Config.VehiclePositions[i]["price"] .." ", 4, 0.2, 0.1, 255, 255, 255, 215)

						if IsControlJustPressed(0, 38) then
							if IsPedInVehicle(ped, Config.VehiclePositions[i]["entityId"], false) then
								
				         	ESX.ShowNotification("Tu no estas dentro de un  ~g~vehiculo~s~!")
						
							else


								OpenSellMenu(Config.VehiclePositions[i]["entityId"], Config.VehiclePositions[i]["price"], true, Config.VehiclePositions[i]["owner"])

							

							end
						end
					end
				end
			end

			Citizen.Wait(sleepThread)
		end
	end)
end

function OpenSellMenu(veh, price, buyVehicle, owner)
	local elements = {}

	if not buyVehicle then
		if price ~= nil then
			table.insert(elements, { ["label"] = "Quiere vender tu vehiculo por ? $" .. price .. " ", ["value"] = "price" })
			table.insert(elements, { ["label"] = "Vender", ["value"] = "sell" })
		else
			table.insert(elements, { ["label"] = "Ponle un precio a tu vehiculo", ["value"] = "price" })
		end
	else
		table.insert(elements, { ["label"] = "Comprar por $/" .. price .. " ", ["value"] = "buy" })

		if owner then
			table.insert(elements, { ["label"] = "Remover Vehiculo", ["value"] = "remove" })
		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'sell_veh',
		{
			title    = "Vehicle Menu",
			align    = 'top-right',
			elements = elements
		},
	function(data, menu)
		local action = data.current.value

		if action == "price" then
			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'sell_veh_price',
				{
					title = "Ponle un precio a tu vehiculo "
				},
			function(data2, menu2)

				local vehPrice = tonumber(data2.value)

				menu2.close()
				menu.close()

				OpenSellMenu(veh, vehPrice)
			end, function(data2, menu2)
				menu2.close()
			end)
		elseif action == "sell" then
			local vehProps = ESX.Game.GetVehicleProperties(veh)

			ESX.TriggerServerCallback("lindembert-ventas-autos:isVehicleValid", function(valid)

				if valid then
					DeleteVehicle(veh)
					ESX.ShowNotification(" El ~g~vehiculo~s~ se puso a la venta por el precio de  $/ " .. price .. "  ")
					menu.close()
				else
					ESX.ShowNotification("Debe ~r~ poseer~s~ el ~g~vehiculo!~s~ / ya ~r~hay ~s~ " .. #Config.VehiclePositions .. " vehiculos a la venta!")
				end
	
			end, vehProps, price)
		elseif action == "buy" then
			ESX.TriggerServerCallback("lindembert-ventas-autos:buyVehicle", function(isPurchasable, totalMoney)
				if isPurchasable then
					DeleteVehicle(veh)
					ESX.ShowNotification("Usted ~g~ compro~s~ el vehiculo por $/" .. price .. "  ")
					menu.close()
				else
					ESX.ShowNotification("Usted ~r~no~s~ tiene suficiente efectivo, le falta $/ " .. price - totalMoney .. " ")
				end
			end, ESX.Game.GetVehicleProperties(veh), price)
		elseif action == "remove" then
			ESX.TriggerServerCallback("lindembert-ventas-autos:buyVehicle", function(isPurchasable, totalMoney)
				if isPurchasable then
					DeleteVehicle(veh)
					ESX.ShowNotification("Tu ~g~ removiste~s~ tu vehiculo")
					menu.close()
				end
			end, ESX.Game.GetVehicleProperties(veh), 0)
		end
		
	end, function(data, menu)
		menu.close()
	end)
end

function RemoveVehicles()
	local VehPos = Config.VehiclePositions

	for i = 1, #VehPos, 1 do
		local veh, distance = ESX.Game.GetClosestVehicle(VehPos[i])

		if DoesEntityExist(veh) and distance <= 1.0 then
			DeleteEntity(veh)
		end
	end
end

function SpawnVehicles()
	local VehPos = Config.VehiclePositions

	ESX.TriggerServerCallback("lindembert-ventas-autos:retrieveVehicles", function(vehicles)
		for i = 1, #vehicles, 1 do

			local vehicleProps = vehicles[i]["vehProps"]

			LoadModel(vehicleProps["model"])

			VehPos[i]["entityId"] = CreateVehicle(vehicleProps["model"], VehPos[i]["x"], VehPos[i]["y"], VehPos[i]["z"] - 0.975, VehPos[i]["h"], false)
			VehPos[i]["price"] = vehicles[i]["price"]
			VehPos[i]["owner"] = vehicles[i]["owner"]

			ESX.Game.SetVehicleProperties(VehPos[i]["entityId"], vehicleProps)
			DisableControlAction(0, 32, true) -- W
			DisableControlAction(0, 8, true) -- S
			FreezeEntityPosition(VehPos[i]["entityId"], true)

            SetVehicleDoorsLocked(VehPos[i]["entityId"], 2)

			SetEntityAsMissionEntity(VehPos[i]["entityId"], true, true)
			SetModelAsNoLongerNeeded(vehicleProps["model"])
		end
	end)

end

LoadModel = function(model)
	while not HasModelLoaded(model) do
		RequestModel(model)

		Citizen.Wait(1)
	end
end
Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing
function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function Drawing.drawMissionText(m_text, showtime)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
end

function msginf(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end
