Config = {
    Price = 10000,
    ReviveTime = 60, -- seconds until you are revived
    Hospitals = {
        {
            Bed = {coords = vector3(255.84, -1352.3, 25.52), heading = 317.0, occupied = false},
            Peds = {
                pedHash = -730659924,
                reception = {coords = vector3(262.11, -1359.78, 23.54), heading = 51.9},
                doctor = {coords = vector3(255.2, -1351.74, 23.55), heading = 232.59},
            },
        },
    },
}

Strings = {
    ['get_help'] = [[Presiona %s para obtener atencion medica por ~g~$%s]],
    ['not_enough'] = [[No tienes suficiente dinero!]],
    ['getting_help'] = [[Usted esta recibiendo ayuda, %s segundos restantes!]],
    ['occupied'] = [[Las camas estan ocupadas! regrese mas tarde o espere una cama.]]
}