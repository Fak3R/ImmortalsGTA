Config = {}

Config.Locale = 'en'

Config.AmmunitionZones = {
	AmmunitionShops = {
		Pos = {
			--{x = 22.41,  y = -1110.33, z = 29.8},
			{x = 808.95,  y = -2154.64, z = 29.62},
			{x = 840.24,  y = -1029.85, z = 28.19},
			{x = -660.62,  y = -938.84, z = 21.83},
			{x = 248.57,  y = -50.04, z = 69.94},
			{x = 2566.51,  y = 297.7, z = 108.74},
			{x = -1114.73,  y = 2697.55, z = 18.55},
			{x = 1696.87,  y = 3759.02, z = 34.71},
			{x = -326.37,  y = 6082.74, z = 31.45}
		}
	}
}

Config.KeyToOpenShop = 38
Config.ShopMarker = 27
Config.ShopMarkerColor = { r = 255, g = 255, b = 0, a = 100 }
Config.ShopMarkerScale = { x = 1.0, y = 1.0, z = 1.0 }
Config.ShopDraw3DText = "Presione~g~[E]~s~ para comprar ~y~ balas ~s~"
 
Config.ItemsInAmmunitionShop = {
	{ itemName = 'WEAPON_PISTOL', label = 'Pistol', BuyInAmmunitionShop = true, BuyPrice = 10},
	{ itemName = 'WEAPON_PISTOL_MK2', label = 'Pistol II', BuyInAmmunitionShop = true, BuyPrice = 12},
	{ itemName = 'WEAPON_COMBATPISTOL', label = 'Combat Pistol', BuyInAmmunitionShop = true, BuyPrice = 15},
	{ itemName = 'WEAPON_APPISTOL', label = 'AP-Pistol', BuyInAmmunitionShop = true, BuyPrice = 25},
	{ itemName = 'WEAPON_ASSAULTRIFLE', label = 'Assault Rifle', BuyInAmmunitionShop = true, BuyPrice = 35},
	{ itemName = 'WEAPON_ASSAULTRIFLE_MK2', label = 'Assault Rifle Mk II', BuyInAmmunitionShop = true, BuyPrice = 35},
	{ itemName = 'WEAPON_CARBINERIFLE', label = 'Carbine Rifle', BuyInAmmunitionShop = true, BuyPrice = 35},
	{ itemName = 'WEAPON_CARBINERIFLE_MK2', label = 'Carbine Rifle Mk II', BuyInAmmunitionShop = true, BuyPrice = 35},
}

