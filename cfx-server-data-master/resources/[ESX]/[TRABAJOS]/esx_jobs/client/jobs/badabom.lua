Config.Jobs.badabom = { 

	BlipInfos = {
		Sprite =135,
		Color = 63
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = "bv_ftransit",
			Trailer = "none",
			HasCaution = true
		}

	},

	Zones = {

		VehicleSpawner = {
			Pos = {x = -1050.49, y = -235.97, z = 44.02},
			Size = {x = 2.0, y = 2.0, z = 0.2},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = true,
			Name = _U("badabom_name"),
			Type = "vehspawner",
			Spawner = 1,
			Hint = _U("badabom_garage"),
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = -1100.79, y = -260.55, z = 37.69},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Name = _U("service_vh"),
			Type = "vehspawnpt",
			Spawner = 1,
			Heading = 200.1
		},

		VehicleDeletePoint = {
			Pos = {x = -1097.82, y = -254.97, z = 37.7},
			Size = {x = 5.0, y = 5.0, z = 0.2},
			Color = {r = 255, g = 0, b = 0},
			Marker = 1,
			Blip = false,
			Name = _U("return_vh"),
			Type = "vehdelete",
			Hint = _U("return_vh_button"),
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = {x = -139.09, y = -620.74, z = 167.82}
		}

	}
}
