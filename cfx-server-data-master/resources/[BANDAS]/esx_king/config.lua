Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'en'

Config.BishopsStations = {

  Bishops = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      --{ name = 'WEAPON_SWITCHBLADE',      price = 0 }, 
    },

	  AuthorizedVehicles = {
		 { name = 'FX4',  label = 'Vehiculo de mafia 1' },
	  },

    Cloakrooms = {
      { x = 352.84, y = -2060.21, z = 22.25},
    },

    Armories = {
      { x = 353.1, y = -2054.43, z = 22.25},
    },

    Vehicles = {
      {
        Spawner    = { x = 331.23, y = -2049.99, z = 20.79},
        SpawnPoint = { x = 329.77, y = -2035.89, z = 20.97},
        Heading    = 90.0,
      }
    },
	
	Helicopters = {
      {
       Spawner    = { x = 1408.52, y = 1160.36, z = 10.0},
        SpawnPoint = { x = 1457.38, y = 1112.37, z = 114.00},
      Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 324.86, y = -2021.5, z = 21.31},
    },

    BossActions = {
      { x = 353.43, y = -2052.48, z = 22.25}
    },

  },

}
