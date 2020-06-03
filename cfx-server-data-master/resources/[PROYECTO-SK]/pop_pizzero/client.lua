-----------------------------------------------------------------------------------------------
--SCRIPT CREADO PARA EL SERVIDOR DE FIVEM DE PLATA O PLOMO COMUNIDAD GAMER.
--SCRIPT CREADO TOTALMENTE POR THEMAYKELLLL1 [ MIGUEL ANGEL LOPEZ REYES ].
--PLATA O PLOMO COMUNIDAD GAMER ACEPTA NO VENDER / REGALAR / PASAR ESTOS SCRIPTS A OTRAS PERSONAS O COMUNIDADES.
-----------------------------------------------------------------------------------------------


-------------------------------------------
------------------VARIABLES----------------
-------------------------------------------

local pizzeria = { x =217.2, y = -20.56, z = 68.9}
local spawnfaggio = { x = 216.67, y = -28.88, z = 69.72 }

local propina = 0
local posibilidad = 0

local casas = {
	[4] = {name = "CroQ-A-HOOP",x = -730.22, y = -130.7 , z = 37.07},
	[5] = {name = "Casa de Lindembert ",x = -831.69, y = 114.85 , z = 54.43},
	[6] = {name = "Casa de Artemisia",x = -818.3, y = 177.65 , z = 71.22},
	[7] = {name = "Spanish Avenue 313" ,x =-176.78,y =83.03,z =69.24},
	[8] = {name = "Didion Drive" ,x =-369.4,y =344.48,z =108.94},
	[9] = {name = "Didion Drive -616" ,x = -407.84,y =341.44,z =107.91},
	[10] = {name = "Didion Drive -5050" ,x = -313.33,y =474.05,z =110.45},
	[11] = {name = "Didion Drove -300" ,x = -298.13,y =382.11,z =110.53},
	[12] = {name = "Jewelry" ,x = 231.72,y =363.8,z =104.84},
	[13] = {name = "Bridge Street" ,x = 1056.82,y =-447.23,z =66.26},
	[14] = {name = "West Mirror Drive" ,x = 988.71,y =-434.41,z =62.74},
	[15] = {name = "Marathon Avenue" ,x = -940.51,y =-338.37,z =38.98},
	[16] = {name = "Marathon Avenue" ,x = -1077.65,y =-354.32,z =36.8},
	[17] = {name = "Joyeria" ,x = -633.42,y =-239.16,z =37.07},
	[18] = {name = "Italiano" ,x = -587.28,y =-390.48,z =33.9},
}

local isInJobPizz = false
local sigcasa = 0
local plateab = "POPJOBS"
local isToHouse = false
local isToPizzaria = false
local multiplicador_De_dinero = 1 
local paga = 0
local px = 0
local py = 0
local pz = 0
local job = nil

AddEventHandler('playerSpawned', function(spawn)
	TriggerServerEvent('pop_pizzero:getJob')
end)
RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  	TriggerServerEvent('pop_pizzero:getJob')
end)

local blips = {
	{title="Pizzeria", colour=66, id=267, x = 217.2, y = -20.56, z = 68.9},
}

-------------------------------------------
--------------------BLIPS------------------
-------------------------------------------

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x,info.y,info.z)
      SetBlipSprite(info.blip, 267)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, 66)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

function Iracasa(casas,sigcasa)
	blip_casa = AddBlipForCoord(casas[sigcasa].x,casas[sigcasa].y, casas[sigcasa].z)
	SetBlipSprite(blip_casa, 1)
	SetNewWaypoint(casas[sigcasa].x,casas[sigcasa].y)
end

-------------------------------------------
------------------CITIZENS-----------------
-------------------------------------------

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if isInJobPizz == false then
			DrawMarker(1,pizzeria.x,pizzeria.y,pizzeria.z, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.6001,255,255,51, 200, 0, 0, 0, 0)
			if GetDistanceBetweenCoords(pizzeria.x, pizzeria.y, pizzeria.z, GetEntityCoords(GetPlayerPed(-1),true)) < 1.5 then
			--function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
				drawTxt("~y~PULSA ~r~[E]~y~ PARA COMENZAR A TRABAJAR DE PIZZERO",2, 1, 0.45, 0.06, 0.50,255,255,51,255)
				if IsControlJustPressed(1,38) and job == "pizza" then
					isInJobPizz = true
					isToHouse = true
					sigcasa = math.random(4, 18)
					-- [INFO] TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, sigcasa)
					px = casas[sigcasa].x
					py = casas[sigcasa].y
					pz = casas[sigcasa].z
					distancia = round(GetDistanceBetweenCoords(pizzeria.x, pizzeria.y, pizzeria.z, px,py,pz))
					paga = distancia * multiplicador_De_dinero
					-- [INFO] TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, distancia)
					spawn_faggio()

					Iracasa(casas,sigcasa)
					Citizen.Wait(1000)
				elseif IsControlJustPressed(1,38) and not(job == "pizza") then
					TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "No eres pizzero.")
				end
			end
		end
		if isToHouse == true then
			destinol = casas[sigcasa].name
			drawTxt("DIRIGETE A "..destinol.." PARA ENTREGAR LA PIZZA",4, 1, 0.45, 0.92, 0.70,255,255,255,255)
			DrawMarker(1,casas[sigcasa].x,casas[sigcasa].y,casas[sigcasa].z, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.6001,255,255,51, 200, 0, 0, 0, 0)
			if GetDistanceBetweenCoords(px,py,pz, GetEntityCoords(GetPlayerPed(-1),true)) < 3 then
				drawTxt("~y~PULSA~r~[E]~y~ PARA ENTREGAR LA PIZZA",2, 1, 0.45, 0.06, 0.50,255,255,51,255)
				if IsControlJustPressed(1,38) then
					if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("faggio2"))  then
						posibilidad = math.random(1, 100)
						if (posibilidad > 70) and (posibilidad < 90) then
							propina = math.random(100, 200)
							TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0},"Toma de propina : "..propina.."$")
							TriggerServerEvent("pop_pizzero:propina", propina)
						end
						isToHouse = false
						isToPizzaria = true
						RemoveBlip(blip_casa)
						SetNewWaypoint(pizzeria.x,pizzeria.y)
					else
						TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0},"¿De qué vehículo sacas la pizza?")
					end
				end
			end
		end
		if isToPizzaria == true then
			drawTxt("DIRIGETE A LA PIZZERIA PARA COBRAR",4, 1, 0.45, 0.92, 0.70,255,255,255,255)
			DrawMarker(1,pizzeria.x,pizzeria.y,pizzeria.z, 0, 0, 0, 0, 0, 0, 1.5001, 1.5001, 0.6001,255,255,51, 200, 0, 0, 0, 0)
				if GetDistanceBetweenCoords(pizzeria.x,pizzeria.y,pizzeria.z, GetEntityCoords(GetPlayerPed(-1),true)) < 3 then
					drawTxt("~y~PULSA~r~[E]~y~ PARA COBRAR",2, 1, 0.45, 0.03, 0.80,255,255,51,255)
					if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("faggio2"))  then
						if IsControlJustPressed(1,38) then
							if IsInVehicle() then

								TriggerServerEvent('exp:addExperience',45)
								TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0},"Gracias por hacer el reparto, toma la paga: "..paga.."$")
								TriggerServerEvent("pop_pizzero:propina", paga)
								isToHouse = false
								isToPizzaria = false
								isInJobPizz = false
								paga = 0
								px = 0
								py = 0
								pz = 0
								local vehicleu = GetVehiclePedIsIn(GetPlayerPed(-1), false)
								SetEntityAsMissionEntity( vehicleu, true, true )
			               		deleteCar( vehicleu )
							else
								TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0},"No te voy a pagar si no me entregas mi moto, lo siento.")
							end
						end
					else
						TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0},"No te voy a pagar si no me entregas mi moto, lo siento.")
					end
				end
		end
		if IsEntityDead(GetPlayerPed(-1)) then
			 isInJobPizz = false
			 sigcasa = 0
			 isToHouse = false
			 isToPizzaria = false
			 paga = 0
			 px = 0
			 py = 0
			 pz = 0
		end
	end
end)

-------------------------------------------
----------------FUNCIONES------------------
-------------------------------------------

function spawn_faggio()
	Citizen.Wait(0)

	local myPed = GetPlayerPed(-1)
	local player = PlayerId()
	local vehicle = GetHashKey('faggio2')

	RequestModel(vehicle)

	while not HasModelLoaded(vehicle) do
		Wait(1)
	end

	local plate = math.random(100, 900)
	local spawned_car = CreateVehicle(vehicle, spawnfaggio.x,spawnfaggio.y,spawnfaggio.z, 431.436, - 996.786, 25.1887, true, false)

	local plate = "CTZN"..math.random(100, 900)
    SetVehicleNumberPlateText(spawned_car, plate)
	SetVehicleOnGroundProperly(spawned_car)
	SetVehicleLivery(spawned_car, 2)
	SetPedIntoVehicle(myPed, spawned_car, - 1)
	SetModelAsNoLongerNeeded(vehicle)
	Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(spawned_car))
	TriggerEvent("advancedFuel:setEssence", 100, GetVehicleNumberPlateText(spawned_car), GetDisplayNameFromVehicleModel(GetEntityModel(spawned_car)))
end

function round(num, numDecimalPlaces)
	local mult = 5^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function deleteCar( entity )
    Citizen.InvokeNative( 0xEA386986E786A54F, Citizen.PointerValueIntInitialized( entity ) )
end

function IsInVehicle()
  local ply = GetPlayerPed(-1)
  if IsPedSittingInAnyVehicle(ply) then
    return true
  else
    return false
  end
end

-------------------------------------------
----------FUNCIONES ADICIONALES------------
-------------------------------------------

function drawTxt(text,font,centre,x,y,scale,r,g,b,a)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x , y)
end

RegisterNetEvent('pop_pizzero:setJob')
AddEventHandler('pop_pizzero:setJob',function(jobu)
	job = jobu
end)