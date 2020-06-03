Config = {}
Config.Locale = 'en'

Config.Price = 250

Config.DrawDistance = 100.0
Config.MarkerSize   = {x = 1.5, y = 1.5, z = 1.0}
Config.MarkerColor  = {r = 201, g = 2, b = 154}
Config.MarkerType   = 8

Config.Zones = {


}

Config.Shops = {

  {x=75.7 ,  y=-1399.94, z=29.38 -0.95}

}

for i=1, #Config.Shops, 1 do

	Config.Zones['Shop_' .. i] = {
	 	Pos   = Config.Shops[i],
	 	Size  = Config.MarkerSize,
	 	Color = Config.MarkerColor,
	 	Type  = Config.MarkerType
  }

end
