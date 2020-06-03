Config = {}

Config.Debug = false

Config.AlignMenu = "right" -- this is where the menu is located [left, right, center, top-right, top-left etc.]

Config.StoreBlips = false -- enable blips on every store.

Config.BlackMoney = true -- if you want to purchase with black money.

Config.DefaultAmmo = 120 -- this is the ammo you will get when purchasing a weapon.

Config.MarkerData = {
    ["type"] = 6,
    ["size"] = vector3(1.5, 1.5, 1.5),
    ["color"] = vector3(0, 255, 150),
    ["range"] = 5.0
}

Config.WeaponShops = {
    {
        ["name"] = "Ammu-Nation Boulevard",
        ["clerkMarker"] = {
            ["position"] = vector3(20.174058914185, -1106.2066650391, 29.797029495239),
            ["heading"] = 340.0
        },
        ["clerk"] = {
            ["model"] = 0x9E08633D,
            ["position"] = vector3(20.823081970215, -1104.3601074219, 29.797029495239 -0.95),
            ["heading"] = 160.0
        },
        ["camera"] = {
            ["x"] = 21.343982696533, 
            ["y"] = -1107.1812744141, 
            ["z"] = 30.963396072388, 
            ["rotationX"] = -26.204723984003, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -110.33070892096
        },
        ["object"] = {
            ["position"] = vector3(23.115102767944, -1107.7210693359, 30.272029876709)
        }
    }
}

Config.Weapons = {

    {
        ["model"] = "WEAPON_PISTOL50",
        ["price"] = 10000
    }

--[[


    ,


    {
        ["model"] = "WEAPON_PISTOL",
        ["price"] = 500000
    },
    {
        ["model"] = "WEAPON_COMBATPISTOL",
        ["price"] = 700000
    },

    {
        ["model"] = "WEAPON_APPISTOL",
        ["price"] = 1200000
    },
    {
        ["model"] = "WEAPON_SNIPERRIFLE",
        ["price"] = 2000000
    },
    {
        ["model"] = "WEAPON_SPECIALCARBINE",
        ["price"] = 2500000
    },
    {
        ["model"] = "WEAPON_PUMPSHOTGUN",
        ["price"] = 2500000
    },
    {
        ["model"] = "WEAPON_ASSAULTSMG",
        ["price"] = 2500000
    },
    {
        ["model"] = "WEAPON_SMG",
        ["price"] = 2500000
    },
    {
        ["model"] = "WEAPON_MICROSMG",
        ["price"] = 2500000
    }
]]


}

-- These are the prices for each ammo.
Config.AmmoTypes = {
    [`AMMO_PISTOL`] = 50,
    [`AMMO_SMG`] = 25,
    [`AMMO_RIFLE`] = 30,
    [`AMMO_SHOTGUN`] = 70,
    [`AMMO_SNIPER`] = 40
}

Config.WeaponComponents = {
    ["WEAPON_SNIPERRIFLE"] = {
        ["scope"] = {
            {
                ["component"] = "COMPONENT_AT_SCOPE_MAX",
                ["price"] = 300
            }
        }, 
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_AR_SUPP_02",
                ["price"] = 700
            }
        }
    },

    ["WEAPON_PUMPSHOTGUN"] = {
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_SR_SUPP", 
                ["price"] = 1000
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_AR_FLSH",
                ["price"] = 500
            }
        }
    },
    
    ["WEAPON_SPECIALCARBINE"] = {
        ["mag"] = {
            { 
                ["component"] = "COMPONENT_SPECIALCARBINE_CLIP_02", 
                ["price"] = 2500
            },
            {
                ["component"] = "COMPONENT_SPECIALCARBINE_CLIP_03",
                ["price"] = 5000
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_AR_FLSH",
                ["price"] = 500
            }
        },
        ["scope"] = {
            {
                ["component"] = "COMPONENT_AT_SCOPE_MEDIUM",
                ["price"] = 1500
            }
        },
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_AR_SUPP_02", 
                ["price"] = 1000
            }
        },
        ["grip"] = {
            {
                ["component"] = "COMPONENT_AT_AR_AFGRIP",
                ["price"] = 1500
            }
        }
    },

    ["WEAPON_ASSAULTSMG"] = {
        ["mag"] = {
            {
                ["component"] = "COMPONENT_ASSAULTSMG_CLIP_02", 
                ["price"] = 1000
            }
        },
        ["scope"] = {
            {
                ["component"] = "COMPONENT_AT_SCOPE_MACRO", 
                ["price"] = 1000
            }
        },
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_AR_SUPP_02", 
                ["price"] = 1000
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_AR_FLSH",
                ["price"] = 250
            }
        }
    },

    ["WEAPON_MICROSMG"] = {
        ["mag"] = {
            {
                ["component"] = "COMPONENT_MICROSMG_CLIP_02", 
                ["price"] = 1000
            }
        },
        ["scope"] = {
            {
                ["component"] = "COMPONENT_AT_SCOPE_MACRO", 
                ["price"] = 1000
            }
        },
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_AR_SUPP_02", 
                ["price"] = 1000
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_PI_FLSH",
                ["price"] = 250
            }
        }
    },

    ["WEAPON_SMG"] = {
        ["mag"] = {
            { 
                ["component"] = "COMPONENT_SMG_CLIP_02", 
                ["price"] = 2500
            },
            {
                ["component"] = "COMPONENT_SMG_CLIP_03",
                ["price"] = 5000
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_AR_FLSH",
                ["price"] = 500
            }
        },
        ["scope"] = {
            {
                ["component"] = "COMPONENT_AT_SCOPE_MACRO_02",
                ["price"] = 1500
            }
        },
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_PI_SUPP", 
                ["price"] = 1000
            }
        }
    },

    ["WEAPON_APPISTOL"] = {
        ["mag"] = {
            {
                ["component"] = "COMPONENT_APPISTOL_CLIP_02", 
                ["price"] = 1000
            }
        },
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_PI_SUPP", 
                ["price"] = 1000
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_PI_FLSH",
                ["price"] = 250
            }
        }
    },

    ["WEAPON_COMBATPISTOL"] = {
        ["mag"] = {
            {
                ["component"] = "COMPONENT_COMBATPISTOL_CLIP_02",
                ["price"] = 300, 
            }
        },
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_PI_SUPP",
                ["price"] = 500
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_PI_FLSH",
                ["price"] = 250
            }
        }
    },

    ["WEAPON_PISTOL"] = {
        ["mag"] = {
            {
                ["component"] = "COMPONENT_PISTOL_CLIP_02",
                ["price"] = 500
            }
        },
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_PI_SUPP_02",
                ["price"] = 1000
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_PI_FLSH",
                ["price"] = 750
            }
        }
    },

    ["WEAPON_PISTOL50"] = {
        ["mag"] = {
            {
                ["component"] = "COMPONENT_PISTOL50_CLIP_02",
                ["price"] = 150
            }
        },
        ["suppressor"] = {
            {
                ["component"] = "COMPONENT_AT_AR_SUPP_02",
                ["price"] = 150
            }
        },
        ["flashlight"] = {
            {
                ["component"] = "COMPONENT_AT_PI_FLSH",
                ["price"] = 50
            }
        }
    }
}

Config.DefaultWeapon = Config.Weapons[1]

Config.UnderDev = {
    -- ["WEAPON_SNSPISTOL"] = {"COMPONENT_SNSPISTOL_CLIP_02", "COMPONENT_SNSPISTOL_VARMOD_LOWRIDER"},
    -- ["WEAPON_VINTAGEPISTOL"] = {"COMPONENT_VINTAGEPISTOL_CLIP_02", "COMPONENT_AT_PI_SUPP"},
    -- ["WEAPON_KNUCKLE"] = {"COMPONENT_KNUCKLE_VARMOD_BASE", "COMPONENT_KNUCKLE_VARMOD_PIMP", "COMPONENT_KNUCKLE_VARMOD_BALLAS", "COMPONENT_KNUCKLE_VARMOD_DOLLAR", "COMPONENT_KNUCKLE_VARMOD_DIAMOND", "COMPONENT_KNUCKLE_VARMOD_HATE", "COMPONENT_KNUCKLE_VARMOD_LOVE", "COMPONENT_KNUCKLE_VARMOD_PLAYER", "COMPONENT_KNUCKLE_VARMOD_KING", "COMPONENT_KNUCKLE_VARMOD_VAGOS"},
    -- ["WEAPON_SWITCHBLADE"] = {"COMPONENT_SWITCHBLADE_VARMOD_VAR1", "COMPONENT_SWITCHBLADE_VARMOD_VAR2"}
        -- ["WEAPON_HEAVYPISTOL"] = {"COMPONENT_HEAVYPISTOL_CLIP_02", "COMPONENT_AT_PI_FLSH", "COMPONENT_AT_PI_SUPP", "COMPONENT_HEAVYPISTOL_VARMOD_LUXE"},
    -- ["WEAPON_MINISMG"] = {"COMPONENT_MINISMG_CLIP_02"},
    -- ["WEAPON_MARKSMANPISTOL"] = {"COMPONENT_REVOLVER_VARMOD_BOSS", "COMPONENT_REVOLVER_VARMOD_GOON"},    -- ["WEAPON_COMBATMG"] = {"COMPONENT_COMBATMG_CLIP_02", "COMPONENT_AT_SCOPE_MEDIUM", "COMPONENT_AT_AR_AFGRIP"},
    -- ["WEAPON_COMBATPDW"] = {"COMPONENT_COMBATPDW_CLIP_02", "COMPONENT_COMBATPDW_CLIP_03", "COMPONENT_AT_AR_FLSH", "COMPONENT_AT_SCOPE_SMALL", "COMPONENT_AT_AR_AFGRIP"},
    -- ["WEAPON_GUSENBERG"] = {"COMPONENT_GUSENBERG_CLIP_02"},
    -- ["WEAPON_MACHINEPISTOL"] = {"COMPONENT_MACHINEPISTOL_CLIP_02", "COMPONENT_MACHINEPISTOL_CLIP_03", "COMPONENT_AT_PI_SUPP"},
    -- ["WEAPON_MG"] = {"COMPONENT_MG_CLIP_02", "COMPONENT_AT_SCOPE_SMALL_02"},-- ["WEAPON_SAWNOFFSHOTGUN"] = {"COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE"},
    -- ["WEAPON_ADVANCEDRIFLE"] = {"COMPONENT_ADVANCEDRIFLE_CLIP_02", "COMPONENT_AT_SCOPE_SMALL", "COMPONENT_AT_AR_SUPP", "COMPONENT_AT_AR_FLSH", "COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"},
    -- ["WEAPON_ASSAULTRIFLE"] = {"COMPONENT_ASSAULTRIFLE_CLIP_02", "COMPONENT_ASSAULTRIFLE_CLIP_03", "COMPONENT_AT_SCOPE_MACRO", "COMPONENT_AT_AR_SUPP_02", "COMPONENT_AT_AR_AFGRIP", "COMPONENT_AT_AR_FLSH", "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"},
    -- ["WEAPON_BULLPUPRIFLE"] = {"COMPONENT_AT_AR_FLSH", "COMPONENT_AT_AR_SUPP_02", "COMPONENT_AT_AR_AFGRIP"},
    -- ["WEAPON_CARBINERIFLE"] = {"COMPONENT_CARBINERIFLE_CLIP_02", "COMPONENT_CARBINERIFLE_CLIP_03", "COMPONENT_AT_SCOPE_MEDIUM", "COMPONENT_AT_AR_SUPP", "COMPONENT_AT_AR_AFGRIP", "COMPONENT_AT_AR_FLSH", "COMPONENT_AT_RAILCOVER_01", "COMPONENT_CARBINERIFLE_VARMOD_LUXE"},
        -- ["WEAPON_ASSAULTSHOTGUN"] = {"COMPONENT_ASSAULTSHOTGUN_CLIP_02", "COMPONENT_AT_AR_SUPP", "COMPONENT_AT_AR_AFGRIP", "COMPONENT_AT_AR_FLSH"},
    -- ["WEAPON_BULLPUPSHOTGUN"] = {"COMPONENT_BULLPUPRIFLE_CLIP_02", "COMPONENT_AT_AR_FLSH", "COMPONENT_AT_SCOPE_SMALL", "COMPONENT_AT_AR_SUPP", "COMPONENT_AT_AR_AFGRIP", "COMPONENT_BULLPUPRIFLE_VARMOD_LOW"},
    -- ["WEAPON_HEAVYSHOTGUN"] = {"COMPONENT_HEAVYSHOTGUN_CLIP_02", "COMPONENT_AT_AR_FLSH", "COMPONENT_AT_AR_SUPP_02", "COMPONENT_AT_AR_AFGRIP"},
       -- ["WEAPON_GRENADELAUNCHER"] = {"COMPONENT_AT_SCOPE_SMALL", "COMPONENT_AT_AR_FLSH", "COMPONENT_AT_AR_AFGRIP"},
    -- ["WEAPON_GRENADELAUNCHER_SMOKE"] = {"COMPONENT_AT_SCOPE_SMALL", "COMPONENT_AT_AR_FLSH", "COMPONENT_AT_AR_AFGRIP"},
    -- ["WEAPON_HEAVYSNIPER"] = {"COMPONENT_AT_SCOPE_LARGE"}, 
    -- ["WEAPON_MARKSMANRIFLE"] = {"COMPONENT_MARKSMANRIFLE_CLIP_02", "COMPONENT_AT_AR_FLSH", "COMPONENT_AT_AR_SUPP", "COMPONENT_AT_AR_AFGRIP", "COMPONENT_MARKSMANRIFLE_VARMOD_LUXE"},
}