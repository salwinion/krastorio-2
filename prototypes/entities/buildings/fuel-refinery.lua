local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{  
	{
		type = "assembling-machine",
		name = "kr-fuel-refinery",
		icon = kr_entities_icons_path .. "fuel-refinery.png",
		icon_size = 64,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.5, mining_time = 0.5, result = "kr-fuel-refinery"},
		max_health = 300,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
		module_specification = { module_slots = 3 },
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		animation = make_4way_animation_from_spritesheet({ layers =
		{
			{
				filename = kr_entities_path .. "fuel-refinery/fuel-refinery.png",
				width = 122,
				height = 134,
				frame_count = 1,
				shift = util.by_pixel(-5, -4.5),
				hr_version =
				{
					filename = kr_entities_path .. "fuel-refinery/hr-fuel-refinery.png",
					width = 244,
					height = 268,
					frame_count = 1,
					shift = util.by_pixel(-5, -4.5),
					scale = 0.5
				}
			},
			{
				filename = kr_entities_path .. "fuel-refinery/fuel-refinery-shadow.png",
				width = 156,
				height = 141,
				frame_count = 1,
				shift = util.by_pixel(31.5, 11),
				draw_as_shadow = true,
				hr_version =
				{
					filename = kr_entities_path .. "fuel-refinery/hr-fuel-refinery-shadow.png",
					width = 350,
					height = 219,
					frame_count = 1,
					shift = util.by_pixel(31.5, 10.75),
					draw_as_shadow = true,
					scale = 0.5
				}
			}
		}}),
		working_visualisations =
		{
			{
				north_position = util.by_pixel(30, -24),
				west_position = util.by_pixel(1, -49.5),
				south_position = util.by_pixel(-30, -48),
				east_position = util.by_pixel(-11, -1),
				apply_recipe_tint = "primary",
				animation =
				{
					filename = kr_entities_path .. "fuel-refinery/boiling-green-patch.png",
					frame_count = 32,
					width = 15,
					height = 10,
					animation_speed = 0.5,
					hr_version =
					{
						filename = kr_entities_path .. "fuel-refinery/hr-boiling-green-patch.png",
						frame_count = 32,
						width = 30,
						height = 20,
						animation_speed = 0.5,
						scale = 0.5
					}
				}
			},
			{
				north_position = util.by_pixel(30, -24),
				west_position = util.by_pixel(1, -49.5),
				south_position = util.by_pixel(-30, -48),
				east_position = util.by_pixel(-11, -1),
				apply_recipe_tint = "secondary",
				animation =
				{
					filename = kr_entities_path .. "fuel-refinery/boiling-green-patch-mask.png",
					frame_count = 32,
					width = 15,
					height = 10,
					animation_speed = 0.5,
					hr_version =
					{
						filename = kr_entities_path .. "fuel-refinery/hr-boiling-green-patch-mask.png",
						frame_count = 32,
						width = 30,
						height = 20,
						animation_speed = 0.5,
						scale = 0.5
					}
				}
			},
			{
				apply_recipe_tint = "tertiary",
				north_position = {0, 0},
				west_position = {0, 0},
				south_position = {0, 0},
				east_position = {0, 0},
				north_animation =
				{
					filename = kr_entities_path .. "fuel-refinery/boiling-window-green-patch.png",
					frame_count = 1,
					width = 87,
					height = 60,
					shift = util.by_pixel(0, -5),
					hr_version =
					{
						filename = kr_entities_path .. "fuel-refinery/hr-boiling-window-green-patch.png",
						x = 0,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5
					}
				},
				east_animation =
				{
					filename = kr_entities_path .. "fuel-refinery/boiling-window-green-patch.png",
					x = 87,
					frame_count = 1,
					width = 87,
					height = 60,
					shift = util.by_pixel(0, -5),
					hr_version =
					{
						filename = kr_entities_path .. "fuel-refinery/hr-boiling-window-green-patch.png",
						x = 174,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5
					}
				},
				south_animation =
				{
					filename = kr_entities_path .. "fuel-refinery/boiling-window-green-patch.png",
					x = 174,
					frame_count = 1,
					width = 87,
					height = 60,
					shift = util.by_pixel(0, -5),
					hr_version =
					{
						filename = kr_entities_path .. "fuel-refinery/hr-boiling-window-green-patch.png",
						x = 348,
						frame_count = 1,
						width = 174,
						height = 119,
						shift = util.by_pixel(0, -5.25),
						scale = 0.5
					}
				}
			}
		},
		
		water_reflection =
		{
			pictures =
			{
				filename = kr_entities_path .. "fuel-refinery/fuel-refinery-reflection.png",
				priority = "extra-high",
				width = 44,
				height = 44,
				shift = util.by_pixel(0, 40),
				variation_count = 1,
				scale = 5,
			},
			rotate = false,
			orientation_to_variation = false
		},
		
		vehicle_impact_sound = sounds.generic_impact,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/chemical-plant.ogg",
				volume   = 0.8
			},
			idle_sound = 
			{ 
				filename = "__base__/sound/idle1.ogg", 
				volume   = 0.6 
			},
			apparent_volume = 1.5
		},
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 10
		},
		energy_usage = "250kW",
		ingredient_count = 4,
		crafting_categories = {"fuel-refinery"},
		fluid_boxes =
		{
			-- Inputs
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }}
			},
			-- Outputs
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, 2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, 2} }}
			}
		}
	}
})