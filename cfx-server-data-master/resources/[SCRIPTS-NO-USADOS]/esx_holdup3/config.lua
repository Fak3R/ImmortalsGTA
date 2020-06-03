Config = {}
Config.Locale = 'en'

Config.PoliceNumberRequired = 4
Config.TimerBeforeNewRob = 300 -- seconds


-- Change secondsRemaining if you want another timer
Stores = {
    ["Pacific_Standart"] = {
        position = { ['x'] = 260.0857, ['y'] = 225.935, ['z'] = 101.0474 },
        reward = math.random(1000000,2500000),
        nameofstore = "Pacific Standart",
        secondsRemaining = 300, -- seconds
        lastrobbed = 0
    }
}
