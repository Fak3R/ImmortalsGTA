Config = {}
Config.Locale = 'en'

Config.PoliceNumberRequired = 5
Config.TimerBeforeNewRob = 3600 -- seconds


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
        position = { ['x'] = -808.55, ['y'] = 171.96, ['z'] = 76.74 },
        reward = math.random(1000000,1500000),
        nameofstore = "Casa de Michael",
        secondsRemaining = 700, -- seconds
        lastrobbed = 0
    }
}
