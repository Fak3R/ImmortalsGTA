ESX                			 = nil
local PlayersVente			 = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_cityworks:GiveItem')
AddEventHandler('esx_cityworks:GiveItem', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local Quantity = xPlayer.getInventoryItem(Config.Zones.Vente.ItemRequires).count

	if Quantity >= 15 then
		TriggerClientEvent('esx:showNotification', _source, _U('stop_npc'))
		return
	else
		local amount = Config.Zones.Vente.ItemAdd
		local item = Config.Zones.Vente.ItemDb_name
		local randomexp = math.random(28,47)

	    TriggerClientEvent('darexperienciadbyhud',source,randomexp)
		xPlayer.addInventoryItem(item, amount)

		TriggerClientEvent('esx:showNotification', _source, 'Las reparaciones fueron hechas ~g~ sigue adelante')

	end

end)

local function Vente(source)

	SetTimeout(Config.Zones.Vente.ItemTime, function()

		if PlayersVente[source] == true then

			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)

			local Quantity = xPlayer.getInventoryItem(Config.Zones.Vente.ItemRequires).count

			if Quantity < Config.Zones.Vente.ItemRemove then
				TriggerClientEvent('esx:showNotification', _source, '~r~No tiene más facturas para cobrar.')
				PlayersVente[_source] = false
			else
				local amount = Config.Zones.Vente.ItemRemove
				local item = Config.Zones.Vente.ItemRequires
				local randomexp = math.random(28,47)

				Citizen.Wait(1500)
				xPlayer.removeInventoryItem(item, amount)

		
	    TriggerClientEvent('darexperienciadbyhud',source,randomexp)
	    
				xPlayer.addMoney(Config.Zones.Vente.ItemPrice)

				TriggerClientEvent('esx:showNotification', _source, 'Ganaste ~g~$' .. Config.Zones.Vente.ItemPrice)
				Vente(_source)
			end

		end
	end)
end

RegisterServerEvent('esx_cityworks:startVente')
AddEventHandler('esx_cityworks:startVente', function()

	local _source = source

	if PlayersVente[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~No hay facturas que cobrar!')
		PlayersVente[_source] = false
	else
		PlayersVente[_source] = true
		TriggerClientEvent('esx:showNotification', _source, '~g~Cobrando ~w~facturas...')
		Vente(_source)
	end
end)

RegisterServerEvent('esx_cityworks:stopVente')
AddEventHandler('esx_cityworks:stopVente', function()

	local _source = source

	if PlayersVente[_source] == true then
		PlayersVente[_source] = false
	else
		PlayersVente[_source] = true
	end
end)
