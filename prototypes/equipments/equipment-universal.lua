-- -- -- Universal equipments

-- -- Energy generated by equipment formula:
-- Equipment energy generated is balanced on this formula:
-- power = 50kW * grid_cells_occupied * tier_multiplier * big_version_multiplier
-- (solar panel is useless, and with this formula will be boosted)	

data:extend(
{
----------------------------------------------------------------------------------------------------
	-- -- BATTERIES
	-- battery-mk3-equipment
	{
		type = "battery-equipment",
		name = "battery-mk3-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "battery-mk3-equipment.png",
			width = 32,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 1,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "50MJ",
			input_flow_limit = "1MW",
			output_flow_limit = "2MW",
			usage_priority = "tertiary"
		},
		categories = {"universal-equipment"}
	},
	-- big-battery-equipment
	{
		type = "battery-equipment",
		name = "big-battery-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "big-battery-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "30MJ",
			input_flow_limit = "0.75MW",
			output_flow_limit = "1MW",
			usage_priority = "tertiary"
		},
		categories = {"universal-equipment"}
	},
	-- big-battery-mk2-equipment
	{
		type = "battery-equipment",
		name = "big-battery-mk2-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "big-battery-mk2-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "75MJ",
			input_flow_limit = "1.5MW",
			output_flow_limit = "2MW",
			usage_priority = "tertiary"
		},
		categories = {"universal-equipment"}
	},
	-- big-battery-mk3-equipment
	{
		type = "battery-equipment",
		name = "big-battery-mk3-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "big-battery-mk3-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "150MJ",
			input_flow_limit = "3MW",
			output_flow_limit = "4MW",
			usage_priority = "tertiary"
		},
		categories = {"universal-equipment"}
	},
----------------------------------------------------------------------------------------------------
	-- -- GENERATORS
	-- small-portable-generator-equipment
	{
		type = "generator-equipment",
		name = "small-portable-generator",
		sprite =
		{
			filename = kr_universal_equipments_path .. "small-portable-generator.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		burner =
		{
			fuel_categories = {"chemical", "vehicle-fuel"},
			effectivity = 2,
			fuel_inventory_size = 2,
			burnt_inventory_size = 1,
			smoke =
            {
                {
                    name = "smoke",
                    deviation = {-0.25, -0.25},
                    frequency = 1,
                    position = {0, 0.5},
                    height = 1.25,
                    starting_frame_deviation = 60
                }
            }
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "200kW", -- 50kW * 4  * 1 * 1
		categories = {"universal-equipment"}
	},
	-- portable-generator
	{
		type = "generator-equipment",
		name = "portable-generator",
		sprite =
		{
			filename = kr_universal_equipments_path .. "portable-generator.png",
			width = 128,
			height = 128,
			priority = "medium"
		},
		shape =
		{
			width = 3,
			height = 3,
			type = "full"
		},
		burner =
		{
			fuel_categories = {"chemical", "vehicle-fuel"},
			effectivity = 2,
			fuel_inventory_size = 2,
			burnt_inventory_size = 1,
			smoke =
            {
                {
                    name = "smoke",
                    deviation = {-0.25, -0.25},
                    frequency = 1,
                    position = {0, 0.5},
                    height = 1.25,
                    starting_frame_deviation = 60
                }
            }
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "540kW", -- 50kW * 9  * 1 * 1.2
		categories = {"universal-equipment"}
	},
	-- nuclear-reactor-equipment
	{
		type = "generator-equipment",
		name = "nuclear-reactor-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "nuclear-reactor-equipment.png",
			width = 128,
			height = 128,
			priority = "medium"
		},
		shape =
		{
			width = 4,
			height = 4,
			type = "full"
		},
		burner =
		{
			fuel_category = "nuclear",
			effectivity = 2,
			fuel_inventory_size = 1,
			burnt_inventory_size = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "2.4MW", -- 50kW * 16 * 3 * 1
		categories = {"universal-equipment"}
	},
	-- antimatter-reactor-equipment
	{
		type = "generator-equipment",
		name = "antimatter-reactor-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "antimatter-reactor-equipment.png",
			width = 128,
			height = 128,
			priority = "medium"
		},
		shape =
		{
			width = 4,
			height = 4,
			type = "full"
		},
		burner =
		{
			fuel_category = "antimatter-fuel",
			effectivity = 2,
			fuel_inventory_size = 1,
			burnt_inventory_size = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "4.0MW", -- 50kW * 16 * 5 * 1
		categories = {"universal-equipment"},
	},
	-- cyber-potato-equipment
	{
		type = "generator-equipment",
		name = "cyber-potato-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "cyber-potato-equipment.png",
			width = 128,
			height = 128,
			priority = "medium"
		},
		shape =
		{
			width = 4,
			height = 4,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "5.0MW", -- 50kW * 16 * 5 * 1
		categories = {"universal-equipment"},
	},
	-- energy absorber
	{
		type = "battery-equipment",
		name = "energy-absorber",
		sprite =
		{
			filename = kr_universal_equipments_path .. "energy-absorber.png",
			width = 128,
			height = 128,
			scale = 0.55,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "18MJ",
			input_flow_limit = "0kW",
			output_flow_limit = "6MW",
			usage_priority = "primary-output"
		},
		categories = {"universal-equipment"}
	},
----------------------------------------------------------------------------------------------------
	-- SOLAR PANELS (GENERATORS)
	-- big-solar-panel-equipment
	{
		type = "solar-panel-equipment",
		name = "big-solar-panel-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "big-solar-panel-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "192kW", -- 40kW * 4  * 1 * 1.2
		categories = {"universal-equipment"}
	},
	-- imersite-solar-panel-equipment
	{
		type = "solar-panel-equipment",
		name = "imersite-solar-panel-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "imersite-solar-panel-equipment.png",
			width = 32,
			height = 32,
			priority = "medium"
		},
		shape =
		{
			width = 1,
			height = 1,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "80kW",  -- 40kW * 1  * 2 * 1
		categories = {"universal-equipment"}
	},
	-- big-imersite-solar-panel-equipment
	{
		type = "solar-panel-equipment",
		name = "big-imersite-solar-panel-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "big-imersite-solar-panel-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "primary-output"
		},
		power = "384kW", -- 40kW * 4  * 2 * 1.2
		categories = {"universal-equipment"}
	},
----------------------------------------------------------------------------------------------------
	-- PERSONAL DEFENCES
	-- personal-laser-defense-mk2-equipment
	{
		type = "active-defense-equipment",
		name = "personal-laser-defense-mk2-equipment",
		localised_name = {"equipment-name.personal-sniper-laser-defense-mk2-equipment"},
		localised_description = {"equipment-description.personal-sniper-laser-defense-mk2-equipment"},
		attack_parameters = 
		{
			type = "beam",
			cooldown = 80,
			damage_modifier = 20,
			projectile_center = {0, 0},
			range = 32.5,
			ammo_type = 
			{
				category = "laser",
				energy_consumption = "4MJ",
				action = 
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 40,
							duration = 40,
							source_offset = {0, -1.31439}
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"},
		energy_source = 
		{
			buffer_capacity = "24MJ",
			input_flow_limit = "3MW",
			type = "electric",
			usage_priority = "secondary-input"
		},
		shape = 
		{
			width = 2,
			height = 2,
			type = "full"		
		},
		sprite = 
		{
			filename = kr_universal_equipments_path .. "personal-laser-defense-mk2-equipment.png",
			height = 64,
			priority = "medium",
			width = 64
		}	
	},
	-- personal-laser-defense-mk3-equipment
	{
		type = "active-defense-equipment",
		name = "personal-laser-defense-mk3-equipment",
		localised_name = {"equipment-name.personal-sniper-laser-defense-mk3-equipment"},
		localised_description = {"equipment-description.personal-sniper-laser-defense-mk3-equipment"},
		attack_parameters = 
		{
			type = "beam",
			cooldown = 90,
			damage_modifier = 25,
			projectile_center = {0, 0},
			range = 35,
			ammo_type = 
			{
				category = "laser",
				energy_consumption = "6MJ",
				action = 
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 40,
							duration = 40,
							source_offset = {0, -1.31439}
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"},
		energy_source = 
		{
			buffer_capacity = "36MJ",
			input_flow_limit = "6MW",
			type = "electric",
			usage_priority = "secondary-input"
		},
		shape = 
		{
			width = 2,
			height = 2,
			type = "full"		
		},
		sprite = 
		{
			filename = kr_universal_equipments_path .. "personal-laser-defense-mk3-equipment.png",
			height = 64,
			priority = "medium",
			width = 64
		}	
	},
	-- personal-laser-defense-mk4-equipment
	{
		type = "active-defense-equipment",
		name = "personal-laser-defense-mk4-equipment",
		localised_name = {"equipment-name.personal-sniper-laser-defense-mk4-equipment"},
		localised_description = {"equipment-description.personal-sniper-laser-defense-mk4-equipment"},
		attack_parameters = 
		{
			type = "beam",
			cooldown = 100,
			damage_modifier = 30,
			projectile_center = {0, 0},
			range = 37.5,
			ammo_type = 
			{
				category = "laser",
				energy_consumption = "8MJ",
				action = 
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 40,
							duration = 40,
							source_offset = {0, -1.31439}
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"},
		energy_source = 
		{
			buffer_capacity = "50MJ",
			input_flow_limit = "10MW",
			type = "electric",
			usage_priority = "secondary-input"
		},
		shape = 
		{
			width = 2,
			height = 2,
			type = "full"		
		},
		sprite = 
		{
			filename = kr_universal_equipments_path .. "personal-laser-defense-mk4-equipment.png",
			height = 64,
			priority = "medium",
			width = 64
		}	
	},
	-- personal-submachine-laser-defense-mk1-equipment
	{
		type = "active-defense-equipment",
		name = "personal-submachine-laser-defense-mk1-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "personal-submachine-laser-defense-mk1-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "20MJ",
			input_flow_limit = "2MW"
		},
		attack_parameters =
		{
			type = "beam",
			damage_modifier = 1.5,
			cooldown = 6,
			range = 15,
			projectile_center = {0, 0.25},
			projectile_creation_distance = 0.5,
			sound =
			{
				filename = "__base__/sound/fight/pulse.ogg",
				volume = 0.3
			},
			ammo_type =
			{
				category = "laser",
				energy_consumption = "0.2MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 16,
							duration = 3,
							source_offset = {0, -1.31439 }
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"}
	},
	-- personal-submachine-laser-defense-mk2-equipment
	{
		type = "active-defense-equipment",
		name = "personal-submachine-laser-defense-mk2-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "personal-submachine-laser-defense-mk2-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "40MJ",
			input_flow_limit = "4MW"
		},
		attack_parameters =
		{
			type = "beam",
			damage_modifier = 2,
			cooldown = 6,
			range = 18,
			projectile_center = {0, 0.25},
			projectile_creation_distance = 0.5,
			ammo_type =
			{
				category = "laser",
				energy_consumption = "0.35MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 29,
							duration = 3,
							source_offset = {0, -1.31439 }
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"}
	},
	-- personal-submachine-laser-defense-mk3-equipment
	{
		type = "active-defense-equipment",
		name = "personal-submachine-laser-defense-mk3-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "personal-submachine-laser-defense-mk3-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "60MJ",
			input_flow_limit = "6MW"
		},
		attack_parameters =
		{
			type = "beam",
			damage_modifier = 3,
			cooldown = 6,
			range = 20,
			projectile_center = {0, 0.25},
			projectile_creation_distance = 0.5,
			ammo_type =
			{
				category = "laser",
				energy_consumption = "0.5MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "instant",
							target_effects =
							{
								{
									type = "create-entity",
									entity_name = "explosion-hit"
								}
							}
						},
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 21,
							duration = 3,
							source_offset = {0, -1.31439 }
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"}
	},
	-- personal-submachine-laser-defense-mk4-equipment
	{
		type = "active-defense-equipment",
		name = "personal-submachine-laser-defense-mk4-equipment",
		sprite =
		{
			filename = kr_universal_equipments_path .. "personal-submachine-laser-defense-mk4-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			buffer_capacity = "75MJ",
			input_flow_limit = "7.5MW"
		},
		attack_parameters =
		{
			type = "beam",
			damage_modifier = 6,
			cooldown = 6,
			range = 22,
			projectile_center = {0, 0.25},
			projectile_creation_distance = 0.5,
			ammo_type =
			{
				category = "laser",
				energy_consumption = "0.75MJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						{
							type = "beam",
							beam = "laser-beam",
							max_length = 23,
							duration = 3,
							source_offset = {0, -1.31439 }
						}
					}
				}
			}
		},
		automatic = true,
		categories = {"universal-equipment"}
	},
----------------------------------------------------------------------------------------------------
	-- SHIELDS
	-- shield mk3
	{
		type = "energy-shield-equipment",
		name = "energy-shield-mk3-equipment",
		localised_name = {"equipment-name.shield-generator-mk3"},
		localised_description = {"equipment-description.shield-generator-mk3"},
		sprite =
		{
			filename = kr_universal_equipments_path .. "energy-shield-mk3-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		max_shield_value = 200,
		energy_per_shield = "40kJ",
		energy_source =
		{
			type = "electric",
			buffer_capacity = "270kJ",
			input_flow_limit = "540kW",
			usage_priority = "primary-input"
		},
		categories = {"universal-equipment"}
	},
	-- shield mk4
	{
		type = "energy-shield-equipment",
		name = "energy-shield-mk4-equipment",
		localised_name = {"equipment-name.shield-generator-mk4"},
		localised_description = {"equipment-description.shield-generator-mk4"},
		sprite =
		{
			filename = kr_universal_equipments_path .. "energy-shield-mk4-equipment.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 2,
			height = 2,
			type = "full"
		},
		max_shield_value = 300,
		energy_per_shield = "50kJ",
		energy_source =
		{
			type = "electric",
			buffer_capacity = "405kJ",
			input_flow_limit = "810kW",
			usage_priority = "primary-input"
		},
		categories = {"universal-equipment"}
	}
})
