
ESX                         = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

--[[ 
RegisterCommand('darperks', function() 
 TriggerServerEvent("darperks")
 end, false)
]]--

-----------------------------------
-----------------------------------
-----------------------------------

--[[
RegisterCommand('looppuntos', function() 
looppuntos = true
print("SISTEMA DE VIPCOINS ACTIVADO")
 end, false)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    looppuntos = true
    print("SISTEMA DE VIPCOINS ACTIVADO")
  end)

]]--


RegisterCommand('fin', function() 
local ped = PlayerPedId()
ClearPedTasks(ped)
ClearPedSecondaryTask(ped)
 end, false)

looppuntos = true

Citizen.CreateThread(function()

  while true do
  local tiempo =  60000*Config.minutos
   Citizen.Wait(tiempo)  
    if  looppuntos  then

      	print("Se Dio Vipcoins")
        TriggerServerEvent("Puntos:addpuntos") 

    else
        Citizen.Wait(100)
    end

  end

end)



------------------------------------------------------------------------------------------------
-----'Script Generador de Puntos Creado/modificado por Karenciita ❤ y ShinxD' ----------
------------------------------------------------------------------------------------------------