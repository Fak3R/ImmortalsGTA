Config                      = {}
Config.Locale = 'en'

Config.Accounts             = { 'bank', 'black_money','vipcoins' }
Config.AccountLabels        = { bank = _U('bank'), black_money = _U('black_money') ,vipcoins = "Monedas Vip"}

Config.EnableSocietyPayouts = false -- pay from the society account that the player is employed at? Requirement: esx_society
Config.ShowDotAbovePlayer   = false
Config.DisableWantedLevel   = true
Config.EnableHud            = false -- enable the default hud? Display current job and accounts (black, bank & cash)

Config.PaycheckInterval     = 7 * 60000
Config.MaxPlayers           = GetConvarInt('sv_maxclients', 255)

Config.EnableDebug          = false
