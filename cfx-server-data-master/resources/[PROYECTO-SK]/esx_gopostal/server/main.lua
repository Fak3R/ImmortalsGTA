ESX = nil

TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)


RegisterServerEvent('esx_goILovePizzapostaljob:pay')
AddEventHandler('esx_goILovePizzapostaljob:pay', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local randomexp = math.random(98,154)

	xPlayer.addMoney(tonumber(amount))
TriggerClientEvent('darexperienciadbyhud',_source,randomexp)

		


end)
