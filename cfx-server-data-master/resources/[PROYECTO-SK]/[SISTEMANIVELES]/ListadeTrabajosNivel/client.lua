Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)



locacionjoblist = { x=-539.54  , y =-214.14 , z= 37.65- 0.95  }



Citizen.CreateThread(function()
	while true do	
		Citizen.Wait(0)

local ped = PlayerPedId()
local distancia = GetDistanceBetweenCoords(GetEntityCoords(ped), locacionjoblist.x, locacionjoblist.y, locacionjoblist.z, true)
	
if not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsEntityDead(GetPlayerPed(-1)) then



	if distancia < 15.0 then

    DrawMarker(1, locacionjoblist.x, locacionjoblist.y, locacionjoblist.z, 0, 0, 0, 0, 0, 90.0, 3.0, 3.0, 1.5, 0, 155, 253, 100, 0, 0, 2, 0, 0, 0, 0)
    	
	    if distancia < 2.0 then
	    	 ESX.ShowHelpNotification("Presiona ~INPUT_CONTEXT~ para abrir la lista de trabajos")
			if IsControlJustReleased(0, Keys['E']) then

				listadetrabajos()			
			end
	    end

	end


end
	end
end)


Citizen.CreateThread(function()

		local blip = AddBlipForCoord(locacionjoblist.x, locacionjoblist.y, locacionjoblist.z)
		SetBlipSprite (blip, 407)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 1.0)
		SetBlipColour (blip, 27)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentSubstringPlayerName('Trabajos')
		EndTextCommandSetBlipName(blip)
end)





function listadetrabajos()

local elements ={  
{ label = 'fueler - Lv0', value = 'fueler'},--X				--NIVEL 10
{ label = 'Pizzero - Lv0', value = 'pizza'}, 		            --NIVEL 0
{ label = 'Basurero - Lv0', value = 'garbage'},--X                 --NIVEL 0
{ label = 'Reportero - Lv0--SOLO PARA ROL , NO PAGA', value = 'reporter'},-- X 		     	--NIVEL 0
{ label = 'Pescador - Lv5', value = 'fisherman'}, 				--NIVEL 5
{ label = 'Sastre   - Lv5', value = 'tailor'}, --X  	            --NIVEL 0
{ label = 'Mantenimiento de plantas - Lv5', value = 'works'},  		--NIVEL 6
{ label = 'Leñador - Lv10', value = 'lumberjack'},--X			--NIVEL 10
{ label = 'Pollero - Lv10', value = 'slaughterer'}, --X			--NIVEL 10
{ label = 'Soldador Marino  - Lv10', value = 'salvage'},-- NIvel 10
{ label = 'Minero  - Lv20', value = 'miner'},--X					--NIVEL 20



{ label = 'salir <span style = "color:#DA2020;">Cerrar ventana</span>', value = 'salir'},

}

ESX.UI.Menu.CloseAll() 
ESX.UI.Menu.Open('default', GetCurrentResourceName(),'ventacyc',{
	title = 'ventacyc', 
	align = 'top-left',
	elements = elements  

}, function(data, menu)

local xptotal = exports['SistemaNiveles']:Exp_XNL_GetCurrentPlayerXP(PlayerId())
local nivelactual = exports['SistemaNiveles']:Exp_XNL_GetCurrentPlayerLevel(xptotal)

if data.current.value == 'tailor' then 

 if nivelactual >= 5 then
	TriggerServerEvent("trabajo:tailor")
else

ESX.ShowNotification('~r~ Necesitas nivel 5 ~s~')
end

elseif data.current.value == 'fisherman' then

 
  if nivelactual >= 5 then
	TriggerServerEvent("trabajo:fisherman")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 5 ~s~')
  end

ESX.UI.Menu.CloseAll()
elseif data.current.value == 'salvage' then

 
  if nivelactual >= 10 then
	TriggerServerEvent("trabajo:salvage")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 10 ~s~')
  end

ESX.UI.Menu.CloseAll()
elseif data.current.value == 'garbage' then

  if nivelactual >= 0 then
    TriggerServerEvent("trabajo:garbage")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 0 ~s~')
  end
ESX.UI.Menu.CloseAll()

elseif data.current.value == 'gopostal' then

 
  if nivelactual >= 0 then
	TriggerServerEvent("trabajo:gopostal")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 0 ~s~')
  end


ESX.UI.Menu.CloseAll()
elseif data.current.value == 'reporter' then

  if nivelactual >= 0 then
TriggerServerEvent("trabajo:reporter")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 0 ~s~')
  end


ESX.UI.Menu.CloseAll()
elseif data.current.value == 'pizza' then

 
  if nivelactual >= 0 then
	TriggerServerEvent("trabajo:pizza")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 0 ~s~')
  end

--NIVELES MAS DE 5+
ESX.UI.Menu.CloseAll()
elseif data.current.value == 'works' then

 
  if nivelactual >= 5 then
	TriggerServerEvent("trabajo:works")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 5 ~s~')
  end
ESX.UI.Menu.CloseAll()
--niveles mas de 10+
elseif data.current.value == 'fueler' then

 
  if nivelactual >= 0 then
	TriggerServerEvent("trabajo:fueler")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 0 ~s~')
  end
ESX.UI.Menu.CloseAll()
elseif data.current.value == 'lumberjack' then

 
  if nivelactual >= 10 then
	TriggerServerEvent("trabajo:lumberjack")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 10 ~s~')
  end
ESX.UI.Menu.CloseAll()
elseif data.current.value == 'slaughterer' then

 
  if nivelactual >= 10 then
	TriggerServerEvent("trabajo:slaughterer")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 10 ~s~')
  end
ESX.UI.Menu.CloseAll()
elseif data.current.value == 'miner' then

 
  if nivelactual >= 20 then
	TriggerServerEvent("trabajo:miner")
	else
	ESX.ShowNotification('~r~ Necesitas nivel 20 ~s~')
  end



ESX.UI.Menu.CloseAll()





elseif data.current.value == 'salir' then
	menu.close()

end

	end)
end


















--https://forum.cfx.re/t/release-xnlrankbar-fully-working-original-gta-rankbar-xp-bar-natively-with-original-gta-levels/318839/139

--exports.XNLRankBar:Exp_XNL_GetCurrentPlayerXP()    -- Will return the current (total) XP amount of the player (int)
--exports.XNLRankBar:Exp_XNL_GetCurrentPlayerLevel() -- Returns the current Level (int) (calculated from the XP amount automatically)
--exports.XNLRankBar:Exp_XNL_GetLevelFromXP(intXPAmount) -- Will 'Calculate' the intXPAmount given into the level it 'belongs to'