local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{
	{
		type = "assembling-machine",
		name = "kr-quantum-computer",
		icon = kr_entities_icons_path .. "quantum-computer.png",
		icon_size = 64,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "kr-quantum-computer"},
		damaged_trigger_effect = hit_effects.entity(),
		max_health = 1000,
		corpse = "kr-medium-random-pipes-remnant",
		dying_explosion = "medium-explosion",
		resistances = 
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 70},
			{type = "impact",percent = 70}
		},
		collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
		selection_box = {{-2.95, -2.95}, {2.95, 2.95}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			layers = 
			{
				{
				filename = kr_entities_path .. "quantum-computer/quantum-computer.png",
				priority = "high",
				width = 200,
				height = 210,
				shift = {0, -0.2},
				frame_count = 48,
				line_length = 8,
				animation_speed = 0.25,
				hr_version =
				{
					filename = kr_entities_path .. "quantum-computer/hr-quantum-computer.png",
					priority = "high",
					width = 400,
					height = 420,
					shift = {0, -0.2},
					frame_count = 48,
					line_length = 8,
					animation_speed = 0.25,
					scale = 0.5
				}
				},
				{
				filename = kr_entities_path .. "quantum-computer/quantum-computer-sh.png",
				priority = "high",
				width = 201,
				height = 181,
				shift = {0.19, 0.315},
				frame_count = 1,
				repeat_count = 48,
				draw_as_shadow = true,
				animation_speed = 0.25,
				hr_version =
				{
					filename = kr_entities_path .. "quantum-computer/hr-quantum-computer-sh.png",
					priority = "high",
					width = 402,
					height = 362,
					shift = {0.19, 0.315},
					frame_count = 1,
					repeat_count = 48,
					draw_as_shadow = true,
					animation_speed = 0.25,
					scale = 0.5
				}
				}
			}
		},
		crafting_categories = {"research-data", "t2-tech-cards", "t3-tech-cards"},
		crafting_speed = 3,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 5
		},
		energy_usage = "1MW",		
		working_visualisations =
		{
			{
				light =
				{
					intensity = 1,
					size = 20,
					shift = {0.0, 0.0},
					color = {r=0.35, g=0.75, b=1}
				}
			}
		},			
		module_specification = { module_slots = 4 },
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		open_sound = { filename = kr_sounds_mod .. "buildings/open.ogg", volume = 1 },
		close_sound = { filename = kr_sounds_mod .. "buildings/close.ogg", volume = 1 },
		vehicle_impact_sound = sounds.generic_impact,
		working_sound =
		{
			sound      = { filename = kr_buildings_sounds_path .. "quantum-computer.ogg" },
			idle_sound = { filename = "__base__/sound/idle1.ogg" },
			apparent_volume = 1.5
		}
	}
})
