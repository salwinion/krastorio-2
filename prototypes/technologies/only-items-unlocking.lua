data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-------------------------------------------------ONLY ITEMS UNLOCKING--------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	{
		type = "technology",
		name = "kr-automation-core",
		icon = kr_technologies_icons_path .. "automation-core.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = krastorio.recipes.changed_names["automation-core"] or "automation-core"
			}
		},
		prerequisites = {},
		unit =
		{
			count = 20,
			ingredients = 
			{
				{"basic-tech-card", 1}
			},
			time = 10
		}
    },
	{
		type = "technology",
		name = "light-armor",
		icon = kr_technologies_icons_path .. "light-armor.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = krastorio.recipes.changed_names["light-armor"] or "light-armor"
			}
		},
		prerequisites = {"military"},
		unit =
		{
			count = 50,
			ingredients = 
			{
				{"basic-tech-card", 1}
			},
			time = 15
		}
    },
	{
		type = "technology",
		name = "automation-science-pack", -- DON'T CHANGE THIS NAME (is needed for the enforce algorithm)
		icon = kr_technologies_icons_path .. "automation-tech-card.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = krastorio.recipes.changed_names["automation-science-pack"] or "automation-science-pack"
			}
		},
		prerequisites = {"kr-automation-core"},
		unit =
		{
			count = 50,
			ingredients = 
			{
				{"basic-tech-card", 1}
			},
			time = 10
		}
    },
	{
		type = "technology",
		name = "kr-stone-processing",
		icon = kr_technologies_icons_path .. "stone-processing.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = krastorio.recipes.changed_names["sand"] or "sand"
			},
			{
				type = "unlock-recipe",
				recipe = krastorio.recipes.changed_names["glass"] or "glass"
			}
		},
		prerequisites = {"kr-crusher"},
		unit =
		{
			count = 50,
			ingredients = 
			{
				{"basic-tech-card", 1}
			},
			time = 15
		}
    },
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})