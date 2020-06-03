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

Config.MafiaStations = {

  Mafia = {

    AuthorizedWeapons = {
      { name = 'WEAPON_COMBATPISTOL',     price = 17000 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 120000 },
      { name = 'GADGET_PARACHUTE',        price = 2000 },
      { name = 'WEAPON_SNIPERRIFLE',      price = 500000 },
      { name = 'WEAPON_APPISTOL',    price = 40000 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 1000000 },
      { name = 'WEAPON_SWITCHBLADE',      price = 500 },
	  { name = 'WEAPON_REVOLVER',         price = 55000 },
	  { name = 'WEAPON_POOLCUE',          price = 100 },
	  { name = 'WEAPON_PISTOL50',         price = 40000 },
	  { name = 'WEAPON_STICKYBOMB',       price = 5000 },
	  { name = 'WEAPON_MOLOTOV',          price = 5000 },
	  
    },

	  AuthorizedVehicles = {
		  { name = 'pista',  label = 'Ferrari' },
		  { name = 'btype',      label = 'Roosevelt' },
		  { name = 'Shifter_kart',   label = 'Kart' },
		  { name = 'Guardian',      label = '4x4' },
		  { name = 'rcbandito',   label = 'DE risas' },
		  { name = 'buzzard2',   label = 'Helicoptero' },
      { name = 'deluxo',       label = 'Delorean' },
      { name = 'oppressor2',       label = 'Supreme' },
	  },

    Cloakrooms = {
      { x = 775.808, y = 4184.27, z = 41.7808 },
    },

    Armories = {
      { x = 749.87, y = 4184.15, z = 41.0878 },
    },

    Vehicles = {
      {
        Spawner    = { x = 711.254, y = 4185.75, z = 41.0826 },
        SpawnPoint = { x = 709.927, y = 4174.49, z = 40.7106 },
        Heading    = 90.0,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 727.041, y = 4169.02, z = 40.7092 },
        SpawnPoint = { x = 709.927, y = 4174.49, z = 40.7106 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 732.424, y = 4170.18, z = 40.7092 },
      { x = 709.927, y = 4174.49, z = 40.7106 },
    },

    BossActions = {
      { x = 741.648, y = 4170.89, z = 41.0879 }
    },

  },

}