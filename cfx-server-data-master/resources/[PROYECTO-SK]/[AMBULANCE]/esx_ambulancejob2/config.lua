Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 500  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'es'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 2 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 10 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(348.0, -1402.3, 32.5), heading = 56.5 }

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
		--	vector3(337.71, -585.98, 28.9)
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
			{
				From = vector3(2940.7, -14480.1, 290.0),
				To = {coords = vector3(2702.8, -13580.8, 230.5), heading = 0.0},
				Marker = {type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false}
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(331.71, -596.31, 43.29 -0.95),
				To = { coords = vector3(330.54, -596.18, 28.94), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(331.48, -595.88, 28.94 -0.95),
				To = { coords = vector3(327.11, -594.91, 43.29), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},
			
			{
				From = vector3(338.59, -583.79, 73.17),
				To = { coords = vector3(331.6, -592.93, 43.28), heading = 138.6 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
			    Prompt = _U('fast_travel')
			},


			{
				From = vector3(331.6, -592.93, 43.28),
				To = { coords = vector3(338.59, -583.79, 73.17), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
			    Prompt = _U('fast_travel')
			},
		}

	}
}


Config.AuthorizedVehicles = {

	ambulance = {
		{
			model = 'hwayalamo',
			label = 'skuere Car',
			price = 10000
		},
	    {
			model = 'hwayalamo2',
			label = 'Skuere Car 2',
			price = 10000
		},
	    {
			model = 'ambulance',
			label = 'Skuere Car 2',
			price = 5000
		}
	},

	doctor = {
		{
			model = 'hwayalamo',
			label = 'skuere Car',
			price = 10000
		},
	    {
			model = 'hwayalamo2',
			label = 'Skuere Car 2',
			price = 10000
		},
	    {
			model = 'ambulance',
			label = 'Skuere Car 2',
			price = 5000
		}
	},

	chief_doctor = {
		{
			model = 'hwayalamo',
			label = 'skuere Car',
			price = 10000
		},
	    {
			model = 'hwayalamo2',
			label = 'Skuere Car 2',
			price = 10000
		},
	    {
			model = 'ambulance',
			label = 'Skuere Car 2',
			price = 5000
		}
	},

	boss = {
		{
			model = 'hwayalamo',
			label = 'skuere Car',
			price = 10000
		},
	    {
			model = 'hwayalamo2',
			label = 'Skuere Car 2',
			price = 10000
		},
	    {
			model = 'ambulance',
			label = 'Skuere Car 2',
			price = 5000
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
