key_to_teleport = 38

positions = {
    --{{273.7, -1024.38, 59.99},{-170.25, 6144.72, 40.74},"TP | SANTOS-PALETO"},
    --{{1507.18, 3576.88, 37.10},{261.2, -1004.96,60.10},"TP | SANTOS-SANDY"},
    --{--{2009.29,2707.79,59.25,0},{2018.66,2716.94,50.37,0},"ENTRAR AL BANDO 2"},
    --{{93.98,-1291.79,29.27,0},{903.66,-3199.93,-97.19,0},"ENTRAR A LA CASA"},
    --{{837.35,-3236.21,-98.7,0},{-897.06,-340.83,33.82,0},"ENTRAR AL GARAJE"},
    --{{234.5, -1373.7, 20.9,0},{317.9, -1476.1, 28.9,0},"Entrar/salir del hospital"},
	 {{335.88, -580.13, 42.29,0},{335.83, -579.96, 73.07,0},"Entrar/salir de la compra de helicopteros"},
	{{210.25, -924.94, 29.69,0},{208.34, -921.76, 213.48,0},"Entrar/salir de la torre"},
    --{{256.51, -1357.75, 36.06,0},{237.4, -1373.77,26.09,0},"Subir/Bajar de la farmacia"},

    --[[
    {{x, y, z, Heading}, {x, y, z, Heading}, "Text to show when in the area."},
    ]]
}

-----------------------------------------------------------------------------
-------------------------DO NOT EDIT BELOW THIS LINE-------------------------
-----------------------------------------------------------------------------

local player = GetPlayerPed(-1)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(5)
        local player = GetPlayerPed(-1)
        local playerLoc = GetEntityCoords(player)

        for i,location in ipairs(positions) do
            teleport_text = location[3]
            loc1 = {
                x=location[1][1],
                y=location[1][2],
                z=location[1][3],
                heading=location[1][4]
            }
            loc2 = {
                x=location[2][1],
                y=location[2][2],
                z=location[2][3],
                heading=location[2][4]
            }

            DrawMarker(1, loc1.x, loc1.y, loc1.z, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, 192, 69, 229, 200, 0, 0, 0, 0)
            DrawMarker(1, loc2.x, loc2.y, loc2.z, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, 192, 69, 229, 200, 0, 0, 0, 0)

            if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc1.x, loc1.y, loc1.z, 2) then 
                alert(teleport_text)
                
                if IsControlJustReleased(1, key_to_teleport) then
                   if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc2.heading)
                    else
                        SetEntityCoords(player, loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(player, loc2.heading)
                    end
                end

            elseif CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc2.x, loc2.y, loc2.z, 2) then
                alert(teleport_text)

                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc1.heading)
                    else
                        SetEntityCoords(player, loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(player, loc1.heading)
                    end
                end
            end            
        end
    end
end)

function CheckPos(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end

function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end