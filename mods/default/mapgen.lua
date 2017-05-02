--
-- Aliases for map generator outputs
--

minetest.register_alias("mapgen_air", "air", "")
minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "default:dirt_with_grass")
minetest.register_alias("mapgen_sand", "default:sand")
minetest.register_alias("mapgen_water_source", "default:water_source")
minetest.register_alias("mapgen_river_water_source", "default:water_source")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_gravel", "default:gravel")

minetest.register_alias("mapgen_tree", "default:tree")
minetest.register_alias("mapgen_leaves", "default:leaves")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_junglegrass", "default:junglegrass")

minetest.register_alias("mapgen_cobble", "default:cobble")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_mossycobble", "default:mossycobble")

--
-- Ore generation
--


-- Blob ore first to avoid other ores inside blobs

minetest.register_ore({ 
	ore_type         = "blob",
	ore              = "default:clay",
	wherein          = {"default:sand"},
	clust_scarcity   = 24*24*24,
	clust_size       = 7,
	y_min            = -15,
	y_max            = 0,
	noise_threshold = 0,
	noise_params     = {
		offset=0.35,
		scale=0.2,
		spread={x=5, y=5, z=5},
		seed=-316,
		octaves=1,
		persist=0.5
	},
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_coal",
	wherein        = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 8,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = 64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 3,
	clust_size     = 2,
	y_min          = -15,
	y_max          = 2,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 8,
	clust_size     = 3,
	y_min          = -63,
	y_max          = -16,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "default:stone_with_iron",
	wherein        = "default:stone",
	clust_scarcity = 7*7*7,
	clust_num_ores = 11,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = -64,
})


--
-- Register biomes for biome API
--


minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

minetest.register_biome({
	name = "default:grassland",
	--node_dust = "",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 8,
	y_max = 31000,
	heat_point = 50,
	humidity_point = 50,
})

minetest.register_biome({
	name = "default:forest",
	--node_dust = "",
	node_top = "default:forest_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = 8,
	y_max = 31000,
	heat_point = 50,
	humidity_point = 60,
})

minetest.register_biome({
	name = "default:grassland_ocean",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	--node_stone = "",
	--node_water_top = "",
	--depth_water_top = ,
	--node_water = "",
	y_min = -31000,
	y_max = 8,
	heat_point = 25,
	humidity_point = 100,
})

minetest.register_biome({
	name = "default:desert",
	--node_dust = "",
	node_top = "default:sand",
	depth_top = 3,
	node_filler = "default:sandstone",
	depth_filler = 1,
	node_stone = "default:sandstone",
	--node_water_top = "",
	--depth_water_top = ,
	node_water = "",
	y_min = 8,
	y_max = 31000,
	heat_point = 100,
	humidity_point = 0,
})

minetest.register_biome({
	name = "default:permafrost",
	--node_dust = "",
	node_top = "default:snow",
	depth_top = 1,
	node_filler = "default:snow",
	depth_filler = 4,
	node_stone = "default:ice",
	node_water_top = "default:ice",
	depth_water_top = 1,
	--node_water = "",
	y_min = 8,
	y_max = 31000,
	heat_point = -10,
	humidity_point = 5,
})

minetest.register_biome({
	name = "default:dryland",
	node_top = "default:gravel",
	depth_top = 3,
	node_filler = "default:gravel",
	depth_filler = 1,
	node_stone = "better_gravel:dense_gravel",
	node_water_top = "default:oil",
	depth_water_top = 10,
	node_water = "default:oil",
	y_min = 8,
	y_max = 31000,
	heat_point = 0,
	humidity_point = 0,
})

-- Decorations

minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass","default:forest_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 2
		},
		biomes = {"grassland", "forest", "grassland_ocean"},
		y_min = 1,
		y_max = 31000,
		decoration = "plants:grass",
	})
	
minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.1,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 2,
			persist = 1
		},
		biomes = {"grassland", "forest"},
		y_min = 1,
		y_max = 31000,
		decoration = "plants:bush",
	})
	
minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:forest_grass"},
		sidelen = 10,
		fill_ratio = 0.08,
		biomes = {"forest"},
		y_min = 7,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})