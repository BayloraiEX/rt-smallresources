Config = {}

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 1800, -- AFK Kick Time Limit (in seconds)
    kickInCharMenu = false -- Set to true if you want to kick players for being AFK even when they are in the character menu.
}

Config.Binoculars = {
    fov_max = 70.0,
    fov_min = 5.0, -- max zoom level (smaller fov is more zoom)
    zoomspeed = 10.0, -- camera zoom speed
    speed_lr = 8.0, -- speed by which the camera pans left-right
    speed_ud = 8.0, -- speed by which the camera pans up-down
    storeBinoclarKey = 177
}

-- Whether to enable or disable dispatch services
Config.DispatchServices = {
    [1] = false, -- Police Vehicles
    [2] = false, -- Police Helicopters
    [3] = false, -- Fire Department Vehicles
    [4] = false, -- Swat Vehicles
    [5] = false, -- Ambulance Vehicles
    [6] = false, -- Police Motorcycles
    [7] = false, -- Police Backup
    [8] = false, -- Police Roadblocks
    [9] = false, -- PoliceAutomobileWaitPulledOver
    [10] = false, -- PoliceAutomobileWaitCruising
    [11] = false, -- Gang Members
    [12] = false, -- Swat Helicopters
    [13] = false, -- Police Boats
    [14] = false, -- Army Vehicles
    [15] = false, -- Biker Backup
}

-- Enable or disable the wanted level
Config.EnableWantedLevel = false

Config.Density = {
    ['parked'] = 0.8,
    ['vehicle'] = 0.8,
    ['multiplier'] = 0.8,
    ['peds'] = 0.8,
    ['scenario'] = 0.8,
}

Config.Stun = {
    active = false,
    min = 4000,
    max = 7000
}

Config.IdleCamera = true
Config.DisableAmbience = false -- Disabled distance sirens, distance car alarms, etc
Config.HarnessUses = 20
Config.DamageNeeded = 130.0 -- vehiclepush 0-1000
Config.MapText = "RETAKERP" -- This is the name / text shown above the map

Config.ConsumablesEat = {
}

Config.ConsumablesDrink = {
}

Config.ConsumablesAlcohol = {
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.FireworkTime = 5 -- seconds before it goes off

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.Objects = { -- for object removal
    {coords = vector3(266.09,-349.35,44.74), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02b"},
    {coords = vector3(285.28,-355.78,45.13), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02a"},
}

Config.DefaultPrice = 10 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(174.81, -1736.77, 28.87),
            length = 7.0,
            width = 8.8,
            heading = 359
        }
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(25.2, -1391.98, 28.91),
            length = 6.6,
            width = 8.2,
            heading = 0
        }
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(-74.27, 6427.72, 31.02),
            length = 9.4,
            width = 8,
            heading = 315
        }
    },
    [4] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(1362.69, 3591.81, 34.5),
            length = 6.4,
            width = 8,
            heading = 21
        }
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["poly"] = {
            coords = vector3(-699.84, -932.68, 18.59),
            length = 11.8,
            width = 5.2,
            heading = 0
        }
    }
}