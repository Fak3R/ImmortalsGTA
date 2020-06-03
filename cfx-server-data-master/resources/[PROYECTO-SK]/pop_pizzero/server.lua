-----------------------------------------------------------------------------------------------
--SCRIPT CREADO PARA EL SERVIDOR DE FIVEM DE PLATA O PLOMO COMUNIDAD GAMER.
--SCRIPT CREADO TOTALMENTE POR THEMAYKELLLL1 [ MIGUEL ANGEL LOPEZ REYES ].
--PLATA O PLOMO COMUNIDAD GAMER ACEPTA NO VENDER / REGALAR / PASAR ESTOS SCRIPTS A OTRAS PERSONAS O COMUNIDADES
--SIN PERMISOS DEL CREADOR DE EL SCRIPT.
-----------------------------------------------------------------------------------------------

RegisterServerEvent('pop_pizzero:propina')
AddEventHandler('pop_pizzero:propina',function(propina)
	TriggerEvent('es:getPlayerFromId',source, function(user)
	        local randomexp = math.random(40,60)
			TriggerClientEvent('darexperienciadbyhud',source,randomexp)	
			user.addMoney((propina))
			TriggerClientEvent('chatMessage', source, 'Empresario | ', {255, 0, 0}, "Has ganado "..propina.."$.")
	end)
end)

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('pop_pizzero:getJob')
AddEventHandler('pop_pizzero:getJob',function()
	local source = source
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayers[i] == source then
			TriggerClientEvent('pop_pizzero:setJob',xPlayers[i],xPlayer.job.name)
		end
	end
end)