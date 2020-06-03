RegisterNetEvent('enviar')
AddEventHandler('enviar', function(argString)
  SendDistressSignal(argString)
end)
function SendDistressSignal(argString)
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	TriggerServerEvent('esx_phone:send', 'police', argString, false, {
		x = coords.x,
		y = coords.y,
		z = coords.z
	})
end