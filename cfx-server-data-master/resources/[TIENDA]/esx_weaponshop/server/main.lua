ESX = nil

local cachedData = {}

TriggerEvent("esx:getSharedObject", function(library) 
	ESX = library 
end)

ESX.RegisterServerCallback("james_weaponshop:validatePurchase", function(source, callback, amount)
	local player = ESX.GetPlayerFromId(source)

	if not player then return callback(false) end

	local paid = false

	if not Config.BlackMoney then
		if player.getMoney() >= amount then
			player.removeMoney(amount)

			paid = true
		elseif player.getAccount("bank")["money"] >= amount then
			player.removeAccountMoney("bank", amount)

			paid = true
		end
	else
		if player.getAccount("vipcoins")["money"] >= amount then
			player.removeAccountMoney("vipcoins", amount)

			paid = true
		end
	end
	
	callback(paid)
end)