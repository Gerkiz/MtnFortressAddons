local Public = {}
-- Tints
Public.electric_worm_layer_1 = { r = 0.9, g = 0.6, b = 0.3, a = 1.0 }
Public.acid_worm_layer_1 = { r = 0.6, g = 0.3, b = 0.9, a = 1.0 }
Public.explosive_worm_layer_1 = { r = 0.9, g = 0.9, b = 0.3, a = 1.0 }
Public.poison_worm_layer_1 = { r = 0.3, g = 0.9, b = 0.6, a = 1.0 }
Public.fire_worm_layer_1 = { r = 0.9, g = 0.3, b = 0.3, a = 1.0 }
Public.giant_worm_layer_1 = { r = 0.3, g = 0.3, b = 0.9, a = 1 }

Public.layer_1 = { r = 0.2, g = 0.7, b = 0.8, a = 1 }
Public.layer_2 = { r = 0.3, g = 0.5, b = 0.7, a = 1 }
Public.layer_3 = { r = 166, g = 229, b = 2, a = 1 }
Public.layer_4 = { r = 156, g = 229, b = 2, a = 1 }
Public.layer_5 = { r = 0.9, g = 0.9, b = 0.3, a = 0.6 }
Public.layer_6 = { r = 0.6, g = 0.2, b = 0.5, a = 1 }
Public.layer_7 = { r = 0.5, g = 0.3, b = 0.6, a = 1 }
Public.layer_8 = { r = 0.4, g = 0.3, b = 0.7, a = 1 }
Public.layer_9 = { r = 0, g = 127, b = 5, a = 1 }
Public.layer_10 = { r = 0, g = 117, b = 5, a = 1 }
Public.layer_11 = { r = 255, g = 20, b = 0.1, a = 1 }
Public.layer_12 = { r = 244, g = 20, b = 0.2, a = 1 }
Public.layer_13 = { r = 0.4, g = 0.4, b = 0.6, a = 1 }
Public.layer_14 = { r = 0.5, g = 0.6, b = 0.5, a = 1 }
Public.layer_15 = { r = 0.6, g = 0.5, b = 0.4, a = 1 }

local tints = {
	['red'] = { r = 1, g = 0.5, b = 0.5, a = 1 },
	['green'] = { r = 0.5, g = 1, b = 0.5, a = 1 },
	['blue'] = { r = 0.5, g = 0.5, b = 1, a = 1 },
	['yellow'] = { r = 1, g = 1, b = 0.2, a = 1 },
	['yellow-heavy'] = { r = 2, g = 2, b = 0.2, a = 1 },
	['purple'] = { r = 1, g = 0.5, b = 1, a = 1 },
	['cyan'] = { r = 0.5, g = 1, b = 1, a = 1 },
	['white'] = { r = 1, g = 1, b = 1, a = 1 },
	['black'] = { r = 0.1, g = 0.1, b = 0.1, a = 1 },
	['brown'] = { r = 0.6, g = 0.4, b = 0.2, a = 1 },
	['steel'] = { r = 0.5, g = 0.5, b = 0.5, a = 1 },
	['mk2'] = { 0.9, 1.0, 1.0, 1.0 },
	['mk3'] = { 0.6, 1.0, 1.0, 1.0 },
	['iron_rust'] = { 1.0, 0.95, 0.9, 1.0 },
	['plastic'] = { 0.92, 0.92, 0.97, 1.0 },
	['bluish_concrete'] = { 0.92, 0.92, 0.97, 1.0 },
	['bluish_science'] = { 0.92, 0.97, 0.97, 1.0 },
	['organic_green'] = { 0.92, 0.97, 0.92, 1.0 },
	['yellowing_coal'] = { 0.85, 0.85, 0.70, 1.0 },
	['ice_blue'] = { 0.9, 1.0, 1.0, 1.0 }
}

Public.tints = tints

return Public
