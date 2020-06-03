    
RegisterServerEvent('anon')
AddEventHandler('anon', function(param)
  print('^7[^4@Anonimo^7]^5:'.. param)
  TriggerClientEvent('chatMessage', -1, '^7[^4@Anonimo^7]^2', {0,0,0} --[[ this table is just rgb ]], param)
end)