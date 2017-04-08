
minetest.register_tool("simple_weapons:dagger_wood", {
	description = "Wooden Dagger",
	inventory_image = "weapons_wood_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=3.2, [3]=0.80}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})

minetest.register_craft({
	output = 'simple_weapons:dagger_wood',
	recipe = {
		{'group:wood'},
		{'default:stick'},
	}
})

minetest.register_tool("simple_weapons:dagger_stone", {
	description = "Stone Dagger",
	inventory_image = "weapons_stone_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=0,
		groupcaps={
			snappy={times={[1]=5, [2]=2.4, [3]=0.7}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	}
})

minetest.register_craft({
	output = 'simple_weapons:dagger_stone',
	recipe = {
		{'group:stone'},
		{'default:stick'},
	}
})


minetest.register_tool("simple_weapons:dagger_steel", {
	description = "Steel Dagger",
	inventory_image = "weapons_steel_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=5, [2]=2.4, [3]=0.7}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	}
})

minetest.register_craft({
	output = 'simple_weapons:dagger_steel',
	recipe = {
		{'default:steel_ingot'},
		{'default:stick'},
	}
})



minetest.register_tool("simple_weapons:dagger_bronze", {
	description = "Bronze Dagger",
	inventory_image = "weapons_bronze_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=5, [2]=2.4, [3]=0.7}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	}
})

minetest.register_craft({
	output = 'simple_weapons:dagger_bronze',
	recipe = {
		{'default:bronze_ingot'},
		{'default:stick'},
	}
})


minetest.register_tool("simple_weapons:dagger_mese", {
	description = "Mese Dagger",
	inventory_image = "weapons_mese_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=4.0, [2]=2.00, [3]=0.7}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=3.5},
	}
})

minetest.register_craft({
	output = 'simple_weapons:dagger_mese',
	recipe = {
		{'default:mese_crystal'},
		{'default:stick'},
	}
})


minetest.register_tool("simple_weapons:dagger_diamond", {
	description = "Diamond Dagger",
	inventory_image = "weapons_diamond_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=3.8, [2]=1.8, [3]=0.60}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	}
})

minetest.register_craft({
	output = 'simple_weapons:dagger_diamond',
	recipe = {
		{'default:diamond'},
		{'default:stick'},
	}
})


minetest.register_tool("simple_weapons:staff_wood", {
	description = "Wooden Staff",
	inventory_image = "weapons_wood_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=4.5, [2]=2.2, [3]=1.2}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})

minetest.register_craft({
	output = 'simple_weapons:staff_wood',
	recipe = {
		{'default:stick'},
		{'default:stick'},
		{'default:stick'},
	}
})


minetest.register_tool("simple_weapons:staff_stone", {
	description = "Stone Staff",
	inventory_image = "weapons_stone_staff.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=2.7, [2]=1.80, [3]=0.75}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})

minetest.register_craft({
	output = 'simple_weapons:staff_wood',
	recipe = {
		{'group:stone'},
		{'default:stick'},
		{'group:stone'},
	}
})


minetest.register_tool("simple_weapons:staff_steel", {
	description = "Steel Staff",
	inventory_image = "weapons_steel_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.0, [2]=1.35, [3]=0.60}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	}
})

minetest.register_craft({
	output = 'simple_weapons:staff_steel',
	recipe = {
		{'default:steel_ingot'},
		{'default:stick'},
		{'default:steel_ingot'},
	}
})


minetest.register_tool("simple_weapons:staff_bronze", {
	description = "Bronze Staff",
	inventory_image = "weapons_bronze_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.0, [2]=1.35, [3]=0.60}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	}
})

minetest.register_craft({
	output = 'simple_weapons:staff_bronze',
	recipe = {
		{'default:bronze_ingot'},
		{'default:stick'},
		{'default:bronze_ingot'},
	}
})


minetest.register_tool("simple_weapons:staff_mese", {
	description = "Mese Staff",
	inventory_image = "weapons_mese_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.4, [2]=0.90, [3]=0.45}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_craft({
	output = 'simple_weapons:staff_bronze',
	recipe = {
		{'default:mese_crystal'},
		{'default:stick'},
		{'default:mese_crystal'},
	}
})


minetest.register_tool("simple_weapons:staff_diamond", {
	description = "Diamond Staff",
	inventory_image = "weapons_diamond_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.3, [2]=0.75, [3]=0.45}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_craft({
	output = 'simple_weapons:staff_diamond',
	recipe = {
		{'default:diamond'},
		{'default:stick'},
		{'default:diamond'},
	}
})


minetest.register_tool("simple_weapons:battleaxe_wood", {
	description = "Wooden Battleaxe",
	inventory_image = "weapons_wood_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=4.5, [3]=3.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})

minetest.register_craft({
	output = 'simple_weapons:battleaxe_wood',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'default:stick', 'group:wood'},
		{'', 'default:stick', ''},
	}
})


minetest.register_tool("simple_weapons:battleaxe_stone", {
	description = "Stone Battleaxe",
	inventory_image = "weapons_stone_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.8,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=4.5, [2]=3.00, [3]=2.25}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4.5},
	}
})

minetest.register_craft({
	output = 'simple_weapons:battleaxe_stone',
	recipe = {
		{'group:stone', 'group:stone', 'group:stone'},
		{'group:stone', 'default:stick', 'group:stone'},
		{'', 'default:stick', ''},
	}
})


minetest.register_tool("simple_weapons:battleaxe_steel", {
	description = "Steel Battleaxe",
	inventory_image = "weapons_steel_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.75, [2]=2.1, [3]=1.5}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_craft({
	output = 'simple_weapons:battleaxe_steel',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', 'default:stick', 'default:steel_ingot'},
		{'', 'default:stick', ''},
	}
})


minetest.register_tool("simple_weapons:battleaxe_bronze", {
	description = "Bronze Battleaxe",
	inventory_image = "weapons_bronze_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.75, [2]=2.1, [3]=1.5}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_craft({
	output = 'simple_weapons:battleaxe_bronze',
	recipe = {
		{'default:bronze_ingot', 'default:bronze_ingot', 'default:bronze_ingot'},
		{'default:bronze_ingot', 'default:stick', 'default:bronze_ingot'},
		{'', 'default:stick', ''},
	}
})


minetest.register_tool("simple_weapons:battleaxe_mese", {
	description = "Mese Battleaxe",
	inventory_image = "weapons_mese_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.35,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.3, [2]=1.50, [3]=0.90}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	}
})

minetest.register_craft({
	output = 'simple_weapons:battleaxe_mese',
	recipe = {
		{'default:mese_crystal', 'default:mese_crystal', 'default:mese_crystal'},
		{'default:mese_crystal', 'default:stick', 'default:mese_crystal'},
		{'', 'default:stick', ''},
	}
})


minetest.register_tool("simple_weapons:battleaxe_diamond", {
	description = "Diamond Battleaxe",
	inventory_image = "weapons_diamond_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.35,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.15, [2]=1.35, [3]=0.75}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=10},
	}
})

minetest.register_craft({
	output = 'simple_weapons:battleaxe_diamond',
	recipe = {
		{'default:diamond', 'default:diamond', 'default:diamond'},
		{'default:diamond', 'default:stick', 'default:diamond'},
		{'', 'default:stick', ''},
	}
})







