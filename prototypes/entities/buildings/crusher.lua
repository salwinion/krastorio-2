data:extend(
{   
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	{
		type = "furnace",
		name = "kr-crusher",
		icon_size = 32,
		icon =  kr_entities_icons_path .. "crusher.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 1, mining_time = 1, result = "kr-crusher"},
		max_health = 500,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		resistances = 
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 70}
		},
		collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
		selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
		fast_replaceable_group = "kr-crusher",
		animation =
		{
			layers =
			{
				{
					filename = kr_entities_path .. "crusher/crusher.png",
					priority = "high",
					scale = scale,
					width = 256,
					height = 256,
					frame_count = 30,
					frame_count = 30,
					line_length = 6,
					animation_speed=0.75,
					hr_version =
					{
						filename = kr_entities_path .. "crusher/hr-crusher.png",
						priority = "high",
						scale = scale,
						width = 512,
						height = 512,
						frame_count = 30,
						line_length = 6,
						animation_speed=0.75,
						scale = 0.5
					}
				},
				{
					filename = kr_entities_path .. "crusher/crusher-shadow.png",
					priority = "high",
					scale = scale,
					width = 256,
					height = 256,
					--shift = {0.36, 0},
					frame_count = 30,
					line_length = 6,
					draw_as_shadow = true,
					hr_version =
					{
						filename = kr_entities_path .. "crusher/hr-crusher-shadow.png",
						priority = "high",
						scale = scale,
						width = 512,
						height = 512,
						--shift = {0.36, 0},
						frame_count = 30,
						line_length = 6,
						draw_as_shadow = true,
						scale = 0.5
					}
				},
			}
		},
		crafting_categories = {"crushing"},
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        --working_sound =
        --{
        --sound =
        --{
        --{
        --    filename = "__Krastorio__/sound/matter-assembler.ogg",
        --    volume = 1
        --}
        --},
        --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
        --apparent_volume = 1.5
        --},
		crafting_speed = 1,
		source_inventory_size = 1,
		result_inventory_size = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 20
		},
		energy_usage = "225KW",
		ingredient_count = 6,
		--module_specification =
		--{
		--	module_slots = 4
		--},
		allowed_effects = nil, --{"consumption", "speed", "productivity", "pollution"},
		--open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		--close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
	},	
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})