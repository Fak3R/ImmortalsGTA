
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



--[[
RegisterServerEvent('darperks')
AddEventHandler('darperks', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
xPlayer.addAccountMoney('perks', 190099)
end)
]]--

RegisterServerEvent('Puntos:addpuntos')
AddEventHandler('Puntos:addpuntos', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local randomicosuerte = math.random(1,5)

	if randomicosuerte == 1 then
	   xPlayer.addAccountMoney('vipcoins', Config.precior1)
	   TriggerClientEvent('esx:showAdvancedNotification',source, "Vipcoins", '', ' Has Ganado ~r~' ..Config.precior1..'~s~ Perks', 'CHAR_MP_MORS_MUTUAL', 1)

	elseif randomicosuerte == 2 then


	   xPlayer.addAccountMoney('vipcoins', Config.precior2)
	   TriggerClientEvent('esx:showAdvancedNotification',source, "Vipcoins", '', ' Has Ganado ~r~' ..Config.precior2..'~s~ Perks', 'CHAR_MP_MORS_MUTUAL', 1)

	elseif randomicosuerte == 3 then


	   xPlayer.addAccountMoney('vipcoins', Config.precior3)
	   TriggerClientEvent('esx:showAdvancedNotification',source, "Vipcoins", '', ' Has Ganado ~r~' ..Config.precior3..'~s~ Perks', 'CHAR_MP_MORS_MUTUAL', 1)

	elseif randomicosuerte == 4 then

	   xPlayer.addAccountMoney('vipcoins', Config.precior4)
	   TriggerClientEvent('esx:showAdvancedNotification',source, "Vipcoins", '', ' Has Ganado ~r~' ..Config.precior4..'~s~ Perks', 'CHAR_MP_MORS_MUTUAL', 1)

	  elseif randomicosuerte == 5 then

	 
	   xPlayer.addAccountMoney('vipcoins', Config.precior5)
	   TriggerClientEvent('esx:showAdvancedNotification',source, "Vipcoins", '', ' Has Ganado ~r~' ..Config.precior5..'~s~ Perks', 'CHAR_MP_MORS_MUTUAL', 1)

	end
	
end)



------------------------------------------------------------------------------------------------
-----'Script Generador de Puntos Creado/modificado por Karenciita ❤ y ShinxD' ----------
------------------------------------------------------------------------------------------------