Config                            = {}
Config.DrawDistance               = 100.0
Config.nameJob                    = "works"
Config.nameJobLabel               = "Contratista"
Config.platePrefix                = "CWORKS"
Config.Locale                     = 'fr'

Config.Vehicles = {
	Truck = {
		Spawner = 1,
		Label = 'Camion',
		Hash = "boxville",
		Livery = 0,
		Trailer = "none",
	}	
}

Config.Zones = {

  Cloakroom = {
    Pos     = {x = 1018.57, y = -2511.58, z = 27.53},
    Size    = {x = 1.5, y = 1.5, z = 0.3},
    Color   = {r = 11, g = 203, b = 159},
    Type    = 1,
	BlipSprite = 354,
	BlipColor = 46,
	BlipName = Config.nameJobLabel.." : Iniciar Mantenimiento",
	hint = 'Presiona ~INPUT_CONTEXT~ para entrar al vestuario',
  },

  VehicleSpawner = {
	Pos   = {x = 1003.1, y = -2529.53, z = 27.53},
	Size  = {x = 1.5, y = 1.5, z = 0.3},
	Color = {r = 11, g = 203, b = 159},
	Type  = 1,
	BlipName = Config.nameJobLabel.." : Boxville",
	hint = 'Presiona ~INPUT_CONTEXT~ para seleccionar el vehiculo',
  },

  VehicleSpawnPoint = {
	Pos   = {x = 1003.20, y = -2511.56, z = 27.55},
	Size  = {x = 3.0, y = 3.0, z = 1.0},
	Type  = -1,
	Heading = 353.25,
  },

  VehicleDeleter = {
	Pos   = {x = 1008.96, y = -2528.22, z = 27.50},
	Size  = {x = 3.0, y = 3.0, z = 0.3},
	Color = {r = 255, g = 0, b = 0},
	Type  = 1,
	BlipName = Config.nameJobLabel.." : Devolver el vehiculo",
	hint = 'Presiona ~INPUT_CONTEXT~ para devolver el vehiculo',
  },

  Vente = {
	Pos   = {x = 1017.34, y = -2529.27, z = 27.53},
	Size  = {x = 2.5, y = 2.5, z = 0.3},
	Color = {r = 11, g = 203, b = 159},
	Type  = 1,
	BlipName = Config.nameJobLabel.." : Pago del Trabajo",

	ItemTime = 500,
	ItemDb_name = "pay_works",
	ItemName = "Pagos",
	ItemMax = 20,
	ItemAdd = 1,
	ItemRemove = 1,
	ItemRequires = "pay_works",
	ItemRequires_name = "Pagos",
	ItemDrop = 100,
	ItemPrice  = 2500,
	hint = 'Presiona ~INPUT_CONTEXT~ para recibir tu pago',
  },

}

Config.Pool = {

{ [ 'x' ] = 	 1076.30	, [ 'y' ] = 	423.74		, [ 'z' ] = 	91.53	},
{ [ 'x' ] = 	 1151.32	, [ 'y' ] = 	383.38		, [ 'z' ] = 	91.41	},
{ [ 'x' ] = 	 274.71		, [ 'y' ] = 	-838.78		, [ 'z' ] = 	29.24	},
{ [ 'x' ] = 	 304.90		, [ 'y' ] = 	-869.71		, [ 'z' ] = 	29.29	},
{ [ 'x' ] = 	 100.93		, [ 'y' ] = 	-969.27		, [ 'z' ] = 	29.37	},
{ [ 'x' ] = 	 -172.42	, [ 'y' ] = 	-914.07		, [ 'z' ] = 	29.30	},
{ [ 'x' ] = 	 -289.49	, [ 'y' ] = 	-1157.72	, [ 'z' ] = 	23.02	},
{ [ 'x' ] = 	 -345.84	, [ 'y' ] = 	-1491.37	, [ 'z' ] = 	30.79	},
{ [ 'x' ] = 	 -415.40	, [ 'y' ] = 	-1781.36	, [ 'z' ] = 	21.27	},
{ [ 'x' ] = 	 -360.67	, [ 'y' ] = 	-1857.71	, [ 'z' ] = 	20.54	},
{ [ 'x' ] = 	 -114.79	, [ 'y' ] = 	-1554.54	, [ 'z' ] = 	33.90	},
{ [ 'x' ] = 	 -36.22		, [ 'y' ] = 	-1576.17	, [ 'z' ] = 	29.29	},
{ [ 'x' ] = 	 -71.57		, [ 'y' ] = 	-1802.43	, [ 'z' ] = 	27.77	},
{ [ 'x' ] = 	 99.75		, [ 'y' ] = 	-1924.24	, [ 'z' ] = 	20.74	},
{ [ 'x' ] = 	 334.79		, [ 'y' ] = 	-1932.80	, [ 'z' ] = 	24.71	},
{ [ 'x' ] = 	 355.73		, [ 'y' ] = 	-2171.11	, [ 'z' ] = 	14.07	},
{ [ 'x' ] = 	 -776.03	, [ 'y' ] = 	-1698.30	, [ 'z' ] = 	29.26	},
{ [ 'x' ] = 	 -904.76	, [ 'y' ] = 	-1781.51	, [ 'z' ] = 	37.37	},
{ [ 'x' ] = 	 -469.08	, [ 'y' ] = 	-2302.44	, [ 'z' ] = 	63.11	},
{ [ 'x' ] = 	 193.46		, [ 'y' ] = 	-3194.00	, [ 'z' ] = 	5.79	},
{ [ 'x' ] = 	 305.07		, [ 'y' ] = 	-3115.05	, [ 'z' ] = 	5.85	},
{ [ 'x' ] = 	 371.47		, [ 'y' ] = 	-2487.27	, [ 'z' ] = 	6.09	},
{ [ 'x' ] = 	 1019.09	, [ 'y' ] = 	-2266.90	, [ 'z' ] = 	30.51	},
{ [ 'x' ] = 	 1452.70	, [ 'y' ] = 	-1893.86	, [ 'z' ] = 	90.91	},
{ [ 'x' ] = 	 1471.78	, [ 'y' ] = 	-1755.72	, [ 'z' ] = 	69.08	},
{ [ 'x' ] = 	 1226.93	, [ 'y' ] = 	-1488.12	, [ 'z' ] = 	35.03	},
{ [ 'x' ] = 	 1244.40	, [ 'y' ] = 	-1475.49	, [ 'z' ] = 	34.90	},
{ [ 'x' ] = 	 1092.56	, [ 'y' ] = 	-794.64		, [ 'z' ] = 	58.27	},
{ [ 'x' ] = 	 830.22		, [ 'y' ] = 	-566.65		, [ 'z' ] = 	57.71	},
{ [ 'x' ] = 	 1167.46	, [ 'y' ] = 	-321.40		, [ 'z' ] = 	69.29	},
{ [ 'x' ] = 	 778.55		, [ 'y' ] = 	-390.47		, [ 'z' ] = 	33.37	},
{ [ 'x' ] = 	 22.60		, [ 'y' ] = 	270.32		, [ 'z' ] = 	109.55	},
{ [ 'x' ] = 	 -1673.20	, [ 'y' ] = 	-264.09		, [ 'z' ] = 	51.88	},
{ [ 'x' ] = 	 -1705.91	, [ 'y' ] = 	-559.74		, [ 'z' ] = 	36.65	},
{ [ 'x' ] = 	 -1661.65	, [ 'y' ] = 	-1146.25	, [ 'z' ] = 	13.02	},
{ [ 'x' ] = 	 -960.59	, [ 'y' ] = 	-3059.56	, [ 'z' ] = 	13.94	},
{ [ 'x' ] = 	 -1222.60	, [ 'y' ] = 	-1182.44	, [ 'z' ] = 	7.72	},
{ [ 'x' ] = 	 -916.12	, [ 'y' ] = 	-1523.36	, [ 'z' ] = 	5.03	},
{ [ 'x' ] = 	 -943.56	, [ 'y' ] = 	-708.14		, [ 'z' ] = 	19.91	},
{ [ 'x' ] = 	 -698.33	, [ 'y' ] = 	-917.51		, [ 'z' ] = 	19.21	},
{ [ 'x' ] = 	 121.07		, [ 'y' ] = 	-1020.88	, [ 'z' ] = 	29.36	},
{ [ 'x' ] = 	 -2064.52	, [ 'y' ] = 	-312.61		, [ 'z' ] = 	13.26	},
{ [ 'x' ] = 	 -82.72		, [ 'y' ] = 	-535.78		, [ 'z' ] = 	40.40	},
{ [ 'x' ] = 	 -1355.97	, [ 'y' ] = 	117.83		, [ 'z' ] = 	56.26	},
{ [ 'x' ] = 	 -1144.74	, [ 'y' ] = 	-511.52		, [ 'z' ] = 	33.65	},
{ [ 'x' ] = 	 -1509.44	, [ 'y' ] = 	-563.27		, [ 'z' ] = 	33.02	},
{ [ 'x' ] = 	 -1182.22	, [ 'y' ] = 	-904.37		, [ 'z' ] = 	13.46	},
{ [ 'x' ] = 	 1100.28	, [ 'y' ] = 	-1288.20	, [ 'z' ] = 	23.32	},
{ [ 'x' ] = 	 364.19		, [ 'y' ] = 	-763.14		, [ 'z' ] = 	29.27	},
{ [ 'x' ] = 	 346.38		, [ 'y' ] = 	-560.82		, [ 'z' ] = 	28.74	},

}

for i=1, #Config.Pool, 1 do

    Config.Zones['Pool' .. i] = {
        Pos   = Config.Pool[i],
        Size  = {x = 1.5, y = 1.5, z = 1.0},
        Color = {r = 204, g = 204, b = 0},
        Type  = -1
    }

end

Config.Uniforms = {

  job_wear = {
    male = {
        ['tshirt_1'] = 59, ['tshirt_2'] = 0,
		['torso_1'] = 5, ['torso_2'] = 0,
		['decals_1'] = 0, ['decals_2'] = 0,
		['arms'] = 5,
		['pants_1'] = 12, ['pants_2'] = 0,
		['shoes_1'] = 71, ['shoes_2'] = 6,
		['helmet_1'] = 0, ['helmet_2'] = 3,
		['chain_1'] = 0, ['chain_2'] = 0,
		['ears_1'] = -1, ['ears_2'] = 0
    },
    female = {
        ['tshirt_1'] = 15, ['tshirt_2'] = 0,
		['torso_1'] = 33, ['torso_2'] = 6,
		['decals_1'] = 0, ['decals_2'] = 0,
		['arms'] = 15,
		['pants_1'] = 25, ['pants_2'] = 1,
		['shoes_1'] = 5, ['shoes_2'] = 13,
		['helmet_1'] = -1, ['helmet_2'] = 0,
		['chain_1'] = 0, ['chain_2'] = 0,
		['ears_1'] = -1, ['ears_2'] = 0
    }
  },
}

