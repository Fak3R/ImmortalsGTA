--------------------------------------
------Created By Whit3Xlightning------
--https://github.com/Whit3XLightning--
--------------------------------------

--RegisterCommand(Config.commandName, function(source, args, rawCommand) TriggerClientEvent("wld:delallveh", -1) end, Config.restricCommand)


RegisterCommand(Config.commandName, function(source, args, rawCommand)
		local source = source
		TriggerEvent('es:getPlayerFromId', source, function(source)
			local esadmin = source.getGroup()
			if esadmin == "superadmin" or esadmin == "admin" then 
				TriggerClientEvent("wld:delallveh", -1)
			end
			
		end)
end)
