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

Config.BountyhunterStations = {

  Mafia = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
     -- { name = 'WEAPON_SWITCHBLADE',      price = 0 },
    },

	  AuthorizedVehicles = {
		  { name = 'cog55',      label = 'vehiculo de mafia' },	  
	  },

    Cloakrooms = {
      { x = 75.29, y = -1961.78, z =20.79 },
    },

    Armories = {
      { x = 73.28, y = -1964.9, z = 20.74 },
    },

    Vehicles = {
      {
        Spawner    = { x = 115.74, y = -1948.6, z = 20.66},
        SpawnPoint = { x = 108.52, y = -1943.12, z = 20.8},
        Heading    = 52.79,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 20.312, y = 535.667, z = 0.627 },
        SpawnPoint = { x = 519.27453613281, y = -1308.9936523438, z = 29.673189163208 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 109.37, y = -1931.49, z = 20.71},
    },

    BossActions = {
      { x = 69.8, y = -1972.53, z = 20.81}
    },

  },

}
