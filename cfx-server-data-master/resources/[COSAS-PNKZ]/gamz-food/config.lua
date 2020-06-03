Config = {}

Config.Zones = {

    ["La Tia Veneno"] = {

        ["coords"] = vector3(162.89, -998.95, 29.35),

        ["drink"] = {
            ["Coca Cola"] = {
                ["price"] = 20,
                ["prop"] = "prop_ecola_can"
            },

            ["Sparkling Water"] = {
                ["price"] = 15,
                ["prop"] = "prop_ld_flow_bottle"
            } 
        },
        
        ["eatable"] = {
            ["Burger"] = {
                ["price"] = 79,
                ["prop"] = "prop_cs_burger_01"
            },

            ["Hotdog"] = {
                ["price"] = 79,
                ["prop"] = "prop_cs_hotdog_01"
            }

        }
    }, -- You can add more spots by just copying this one and changing the values

    ["Comida rapida"] = {
        ["coords"] = vector3(436.27, -986.48, 30.69)
    }

}

Config.Anims = { -- if you want to change the animation
    ["eatable"] = {
        ["animation"] = "mp_player_int_eat_burger_fp",
        ["dict"] = "mp_player_inteat@burger",
    },

    ["drink"] = {
        ["animation"] = "loop_bottle",
        ["dict"] = "mp_player_intdrink",
    },
}

Config.eatable = { -- if you have not choosed any food for a certain zone it will automatically get this
    ["Hotdog"] = {
        ["price"] = 79,
        ["prop"] = "prop_cs_hotdog_01"
    }
}

Config.drink = { -- if you have not choosed any drinks for a certain zone it will automatically get this
    ["Sparkling Water"] = {
        ["price"] = 15,
        ["prop"] = "prop_ld_flow_bottle"
    }
}