if blowall then
            for i = 0, 255 do
				RemoveOwnedExplosion(GetEntityCoords(GetPlayerPed(i)), 2, 100000.0, false, false, 100000.0)
                end
			end