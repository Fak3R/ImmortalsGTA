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
Config.Locale                     = 'en'

Config.MafiaStations = {

  Mafia = {

    --Blip = {
      --Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      --Sprite  = 60,
     -- Display = 4,
     -- Scale   = 1.2,
      --Colour  = 29,
    --},

    AuthorizedWeapons = {
      --{ name = 'WEAPON_COMBATPISTOL',     price = 17000 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 2000000 },
      --{ name = 'GADGET_PARACHUTE',        price = 2000 },
      --{ name = 'WEAPON_SNIPERRIFLE',      price = 500000 },
      --{ name = 'WEAPON_APPISTOL',         price = 40000 },
      --{ name = 'WEAPON_HEAVYSNIPER',      price = 1000000 },
      { name = 'WEAPON_SWITCHBLADE',      price = 50000 }, --chaira
    { name = 'WEAPON_REVOLVER',         price = 350000 },
    { name = 'WEAPON_POOLCUE',          price = 0 }, --palo
    { name = 'WEAPON_PISTOL50',         price = 500000 },
    --{ name = 'WEAPON_STICKYBOMB',       price = 5000 },
    --{ name = 'WEAPON_MOLOTOV',          price = 5000 },
    
    
    },

    AuthorizedVehicles = {
      { name = '4444',  label = 'Merdeces 4x4' },
      --{ name = 'btype',      label = 'Roosevelt' },
      --{ name = 'Shifter_kart',   label = 'Kart' },
      --{ name = 'Guardian',      label = '4x4' },
      --{ name = 'rcbandito',   label = 'DE risas' },
      --{ name = 'buzzard2',   label = 'Helicoptero' },
      --{ name = 'deluxo',       label = 'Delorean' },
      --{ name = 'oppressor2',       label = 'Supreme' },
    },

    Cloakrooms = {
      { x = 1257.24, y = -1578.49, z = 58.2 },
    },

    Armories = {
      { x = 1254.15, y = -1581.9, z = 58.2 },
    },

    Vehicles = {
      {
        Spawner    = { x = 1256.51, y = -1586.91, z = 53.72 },
        SpawnPoint = { x = 1261.17, y = -1588.53, z = 52.95 },
        Heading    = 306.33,
      }
    },
  
  --Helicopters = {
      --{
        --Spawner    = { x = 727.041, y = 4169.02, z = 40.7092 },
        --SpawnPoint = { x = 709.927, y = 4174.49, z = 40.7106 },
        --Heading    = 0.0,
      --}
    --},

    VehicleDeleters = {
      { x = 732.424, y = 4170.18, z = 40.7092 },
      { x = 709.927, y = 4174.49, z = 40.7106 },
    },

    BossActions = {
      { x = 1241.71, y = -1576.92, z = 58.22 }
    },

  },

}