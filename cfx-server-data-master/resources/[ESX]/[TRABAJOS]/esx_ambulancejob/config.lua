Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 7070  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 2 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 20 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(341.07, -1397.31, 32.51), heading = 48.5 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(306.53, -591.75, 43.29),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(313.79, -603.19, 42.29)
		},

		Pharmacies = {
			vector3(337.71, -585.98, 28.9)
		},

		Vehicles = {
			{
				Spawner = vector3(293.45,-598.36,43.3),
				InsideShop = vector3(326.21, -568.02, 28.81),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(295.86, -605.42, 43.32), heading = 227.6, radius = 4.0 },
					{ coords = vector3(291.47, -611.63, 43.39), heading = 227.6, radius = 4.0 }
					
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(341.0, -581.2, 74.17),
				InsideShop = vector3(314.8, -576.23, 94.48),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.28, -587.68, 74.17), heading = 142.7, radius = 10.0 }
					
				}
			}
		},

		FastTravels = {
			--{--ENTRADA
				--From = vector3(247.3, -1371.5, 23.5),
				--To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
				--Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},

			--{SALIDA--
				--From = vector3(335.5, -1432.0, 45.50),
				--To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
				--Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},

			--{--DENTRO DE LA AMBULANCE
			--	From = vector3(234.5, -1373.7, 20.9),
				--To = { coords = vector3(320.9, -1478.6, 28.8), heading = 0.0 },
				--Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},

			--{ TP FUERA DE LA AMBULANCE
				--From = vector3(317.9, -1476.1, 28.9),
				--To = { coords = vector3(238.6, -1368.4, 23.5), heading = 0.0 },
				--Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--}
		},

		FastTravelsPrompt = {
		}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {


	    {
			model = 'ambulance',
			label = 'ambulancia',
			price = 5000
		}
	},

	doctor = {

	    {
			model = 'ambulance',
			label = 'ambulancia',
			price = 10000
		},
	    {
			model = 'ambulance',
			label = 'ambulancia',
			price = 5000
		}
	},

	chief_doctor = {
		{
			model = 'ambulance',
			label = 'ambulancia',
			price = 10000
		},
	    {
			model = 'ambulance',
			label = 'ambulancia',
			price = 10000
		},
	    {
			model = 'ambulance',
			label = 'ambulancia',
			price = 5000
		}
	},

	boss = {
		{
			model = 'ambulance',
			label = 'skuere Car',
			price = 10000
		}

	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{
			model = 'buzzard2',
			label = 'Nagasaki Buzzard',
			price = 150000
		}
	},

	chief_doctor = {
		{
			model = 'buzzard2',
			label = 'Nagasaki Buzzard',
			price = 150000
		},

		{
			model = 'seasparrow',
			label = 'Sea Sparrow',
			price = 300000
		}
	},

	boss = {
		{
			model = 'buzzard2',
			label = 'Nagasaki Buzzard',
			price = 100000
		},

		{
			model = 'seasparrow',
			label = 'Sea Sparrow',
			price = 250000
		}
	}

}
