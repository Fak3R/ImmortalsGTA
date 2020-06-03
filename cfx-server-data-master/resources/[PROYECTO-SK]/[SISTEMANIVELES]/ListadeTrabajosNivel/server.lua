ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('trabajo:tailor')
AddEventHandler('trabajo:tailor', function(job)

        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)

        xPlayer.setJob('tailor', 0)	

 end)

RegisterServerEvent('trabajo:fisherman')
AddEventHandler('trabajo:fisherman', function(job)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('fisherman', 0)	      
 end)

RegisterServerEvent('trabajo:garbage')
AddEventHandler('trabajo:garbage', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('garbage', 0)	      
 end)
 
RegisterServerEvent('trabajo:salvage')
AddEventHandler('trabajo:salvage', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('salvage', 0)	      
 end)

RegisterServerEvent('trabajo:gopostal')
AddEventHandler('trabajo:gopostal', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('gopostal', 0)	      
 end)


RegisterServerEvent('trabajo:gopostal')
AddEventHandler('trabajo:gopostal', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('gopostal', 0)	      
 end)


RegisterServerEvent('trabajo:pizza')
AddEventHandler('trabajo:pizza', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('pizza', 0)	      
 end)

RegisterServerEvent('trabajo:reporter')
AddEventHandler('trabajo:reporter', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('reporter', 0)	      
 end)


RegisterServerEvent('trabajo:works')
AddEventHandler('trabajo:works', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('works', 0)	      
 end)


RegisterServerEvent('trabajo:fueler')
AddEventHandler('trabajo:fueler', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('fueler', 0)	      
 end)

RegisterServerEvent('trabajo:lumberjack')
AddEventHandler('trabajo:lumberjack', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('lumberjack', 0)	      
 end)

RegisterServerEvent('trabajo:slaughterer')
AddEventHandler('trabajo:slaughterer', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('slaughterer', 0)	      
 end)

RegisterServerEvent('trabajo:miner')
AddEventHandler('trabajo:miner', function(trabajo)
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.setJob('miner', 0)	      
 end)
