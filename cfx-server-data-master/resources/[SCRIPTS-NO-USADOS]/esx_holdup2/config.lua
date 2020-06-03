Config = {}
Config.Locale = 'en'

Config.PoliceNumberRequired = 4
Config.TimerBeforeNewRob = 1300 -- seconds


-- Change secondsRemaining if you want another timer
Stores = {
    --[["paleto_twentyfourseven"] = {
        position = { ['x'] = 1736.32092285156, ['y'] = 6419.4970703125, ['z'] = 35.037223815918 },
        reward = math.random(100,1000),
        nameofstore = "24/7. (Paleto Bay)",
        secondsRemaining = 200, -- seconds
        lastrobbed = 0
    },]]
    ["Fleeca_bank"] = {
        position = { ['x'] = -2957.563, ['y'] = 481.5409, ['z'] = 14.90038 },
        reward = math.random(150000,150000),
        nameofstore = "Fleeca bank",
        secondsRemaining = 300, -- seconds
        lastrobbed = 0
    },
    ["Fleeca_bank2"] = {
        position = { ['x'] = 147.0688, ['y'] = -1044.955, ['z'] = 28.60334 },
        reward = math.random(150000,150000),
        nameofstore = "Fleeca bank 2",
        secondsRemaining = 300, -- seconds
        lastrobbed = 0
    },
    ["Blaine_Country"] = {
        position = { ['x'] = -104.9855, ['y'] = 6476.03, ['z'] = 30.85859 },
        reward = math.random(150000,150000),
        nameofstore = "Blaine Country",
        secondsRemaining = 300, -- seconds
        lastrobbed = 0
    }
}
