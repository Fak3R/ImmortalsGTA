Config                            = {}
Config.DrawDistance               = 20.0
Config.Locale = 'en'
Config.DeliveryTime = 0 -- IN SECOUNDS DEFAULT (18000) IS 5 HOURS / 300 MINUTES
Config.TimeBetweenRobberies = 43200
Config.CutOnRobbery = 10 -- IN PERCENTAGE FROM THE TARGET SHOP
Config.RequiredPolices = 3 -- For the robbery
Config.SellValue = 2 -- This is the shops value divided by 2
Config.ChangeNamePrice = 500 -- In $ - how much you can change the shops name for

-- CONFIG ITEMS, DON'T FORGET TO ADD CORRECT NUMBER IN THE BRACKETS
Config.Items = {
    [1] = {label = "Agua",          item = "water",        price = 5},
    [2] = {label = "Pan",           item = "bread",       price = 5},
    [3] = {label = "Absinto",       item = "absinthe",        price = 5},
    [4] = {label = "Cerveza",       item = "beer",       price = 5},
    [5] = {label = "Champan",       item = "champagne",        price = 5},
    [6] = {label = "Papitas Fritas",item = "chips",       price = 5},
    [7] = {label = "Chocolate",     item = "chocolate",        price = 5},
    [8] = {label = "Cigarro",       item = "cigarett",       price = 5},
    [9] = {label = "Coca-cola",     item = "cocacola",        price = 5},
    [10] = {label = "Cafe",         item = "coffe",       price = 5},
    [11] = {label = "Cupcake",      item = "cupcake",        price = 5},
    [12] = {label = "Gin Tonic",    item = "gintonic",       price = 5},
    [13] = {label = "Hamburguesa",  item = "hamburger",        price = 5},
    [14] = {label = "Ice-tea",      item = "icetea",       price = 5},
    [15] = {label = "Encendedor",   item = "lighter",        price = 5},
    [16] = {label = "Leche",        item = "milk",       price = 5},
    [17] = {label = "Sandwich",     item = "sandwich",        price = 5},
    [18] = {label = "Tequila",      item = "tequila",       price = 5},
    [19] = {label = "Vodka",        item = "vodka",        price = 5},
    [20] = {label = "Whisky",       item = "whisky",        price = 5},
}

Config.Images = {
  [1] = {item = "water",   src = "img/bottle.png"},
  [2] = {item = "bread",   src = "img/pan.png"},
  [3] = {item = "absinthe",   src = "img/absinto.png"},
  [4] = {item = "beer",   src = "img/cerveza.png"},
  [5] = {item = "champagne",   src = "img/champagne.png"},
  [6] = {item = "chips",   src = "img/papitasfritas.png"},
  [7] = {item = "chocolate",   src = "img/chocolate.png"},
  [8] = {item = "cigarett",   src = "img/cigarro.png"},
  [9] = {item = "cocacola",   src = "img/cocacola.png"},
  [10] = {item = "coffe",   src = "img/cafe.png"},
  [11] = {item = "cupcake",   src = "img/cupcake.png"},
  [12] = {item = "gintonic",   src = "img/gintonic.png"},
  [13] = {item = "hamburger",   src = "img/hamburguesa.png"},
  [14] = {item = "icetea",   src = "img/icetea.png"},
  [15] = {item = "lighter",   src = "img/encendedor.png"},
  [16] = {item = "milk",   src = "img/leche.png"},
  [17] = {item = "sandwich",   src = "img/sandwich.png"},
  [18] = {item = "tequila",   src = "img/tequila.png"},
  [19] = {item = "vodka",   src = "img/vodka.png"},
  [20] = {item = "whisky",   src = "img/whisky.png"},
}

Config.Zones = {

  ShopCenter = {
    Pos   = {x = 6.09,   y = -708.89,  z = 44.97, number = 'center'},
  },
  Shop1 = {
    Pos   = {x = 373.875,   y = 325.896,  z = 102.566, number = 1}, --574 coord
  },
  Shop2 = {
    Pos = {x = 2557.458,  y = 382.282,  z = 107.622, number = 2}, --402 coord
  },
  --Shop3 = {
    --Pos = {x = -3038.939, y = 585.954,  z = 6.908, number = 3}, --804 coord
  --},
  --Shop4 = {
    --Pos = {x = -1487.553, y = -379.107,  z = 39.163, number = 4}, --635 coord
  --},
  --Shop5 = {
    --Pos = {x = 1392.562,  y = 3604.684,  z = 33.980, number = 5}, --1016 coord
  --},
  Shop6 = {
    Pos = {x = -2968.243, y = 390.910,   z = 14.043, number = 6}, --815 coord
  },
  Shop7 = {
    Pos = {x = 2678.916,  y = 3280.671, z = 54.241, number = 7}, --957 coord
  },
  Shop8 = {
    Pos = {x = -48.519,   y = -1757.514, z = 28.421, number = 8}, --120 coord
  },
  Shop9 = {
    Pos = {x = 1163.373,  y = -323.801,  z = 68.205, number = 9}, --411 coord
  },
  Shop10 = {
    Pos = {x = -707.501,  y = -914.260,  z = 18.215, number = 10}, --don pepe
  },
  --Shop11 = {
    --Pos = {x = -1820.523, y = 792.518,   z = 137.118, number = 11}, --817 coord
  --},
  Shop12 = {
    Pos = {x = 1698.388,  y = 4924.404,  z = 41.063, number = 12}, --2013 coord
  },
  Shop13 = {
    Pos = {x = 1961.464,  y = 3740.672, z = 31.343, number = 13}, --1036 sandy
  },
  --Shop14 = {
    --Pos = {x = 1135.808,  y = -982.281,  z = 45.415, number = 14}, --449 coord
  --},
  Shop15 = {
    Pos = {x = 25.88,   y = -1347.1, z = 28.5, number = 15}, --125 coord
  },
  Shop16 = {
    Pos = {x = -1393.409, y = -606.624,  z = 29.319, number = 16}, --128 bahamasclub
  },
  --Shop17 = {
    --Pos = {x = 547.431,   y = 2671.710, z = 41.156, number = 17}, --928 coord
  --},
  --Shop18 = {
    --Pos = {x = -3241.927, y = 1001.462, z = 11.830, number = 18}, --905 coord
  --},
  Shop19 = {
    Pos = {x = 1166.024,  y = 2708.930,  z = 37.157, number = 19}, --940 coord
  },
  Shop20 = {
    Pos = {x = 1729.216,  y = 6414.131, z = 34.037, number = 20}, --3030 coord
  },
  Shop21 = {
    Pos = {x = 322.9,  y = -922.03, z = 28.29, number = 21 }
  },
}