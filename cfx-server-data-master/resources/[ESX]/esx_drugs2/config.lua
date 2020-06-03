Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 2.0, y = 2.0, z = 2.0}
--Config.MarkerColor  = {r = 100, g = 204, b = 100}

Config.RequiredCopsCoke  = 0
Config.RequiredCopsMeth  = 0
Config.RequiredCopsWeed  = 0
Config.RequiredCopsOpium = 0

Config.TimeToFarm    = 3 * 1000
Config.TimeToProcess = 2 * 1000
Config.TimeToSell    = 1 * 1000

Config.Locale = 'en'

Config.Zones = {
	CokeField =			{x = -585.88,	y = -1599.48,	z = 27.01,	name = _U('coke_field'),		sprite = 310,	color = 37},
	CokeProcessing =	{x = 1442.95,	y = 6333.15,	z = 23.9,	    name = _U('coke_processing'),	sprite = 310,	color = 37},
	CokeDealer =		{x = -572.21,	y = 286.72,	z = 79.18,	name = _U('coke_dealer'),		sprite = 310,	color = 37},
	MethField =			{x = 1392.83,	y = 3605.8,	z = 38.94,	name = _U('meth_field'),		sprite = 51,	color = 9},
	MethProcessing =	{x = 2434.44,	y = 4968.44,	z = 42.35,	name = _U('meth_processing'),	sprite = 51,	color = 9},
	MethDealer =		{x = 976.4,	y = -102.77,	z = 74.85,	name = _U('meth_dealer'),		sprite = 51,	color = 9},
	WeedField =			{x = 2221.79,	y = 5577.04,	z = 53.84,	name = _U('weed_field'),		sprite = 140,	color = 23},
	WeedProcessing =	{x = 1525.64,	y = 1710.22,	z = 110.01,	name = _U('weed_processing'),	sprite = 140,	color = 25},
	WeedDealer =		{x = -10.41,	y = -1433.36,	z = 31.12,	name = _U('weed_dealer'),		sprite = 140,	color = 25},
	OpiumField =		{x = 156.58,	y = 3130.59,	z = 43.58,	name = _U('opium_field'),		sprite = 500,	color = 49},
	OpiumProcessing =	{x = -1001.35,	y = 4847.6,	z = 275.01,	name = _U('opium_processing'),	sprite = 500,	color = 49},
	OpiumDealer =		{x = 150.02,	y = -2203.87,	z = 4.69,	name = _U('opium_dealer'),		sprite = 500,	color = 49}
}

