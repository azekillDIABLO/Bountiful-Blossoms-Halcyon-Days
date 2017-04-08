-- Minetest Mod: "Better Gravel"

-- Settings --
local dense_gravel_cook = true	-- (true/false) Cook dense gravel into cobblestone.
local cobble_drop = false		-- (true/false) Cobblestone drops gravel.
local mossy_drop = true			-- (true/false) Mossy cobble drops gravel.
local mossy_craft = true		-- (true/false) Craft mossy cobble.
local dense_gravel_gen = true	-- (true/false) Generate dense gravel in gravel.

-- Dense Gravel
minetest.register_node("better_gravel:dense_gravel", {
	description = "Dense Gravel",
	tiles = {"better_gravel_dense_gravel.png"},
	groups = {crumbly = 1, falling_node = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_gravel_footstep", gain = 0.5},
		dug = {name = "default_gravel_footstep", gain = 1.0},
	}),
})

-- Gravel --> Dense Gravel
minetest.register_craft({
	type = "shapeless",
	output = "better_gravel:dense_gravel",
	recipe = {"default:gravel", "default:gravel"},
})

-- Dense Gravel --> Gravel
minetest.register_craft({
	output = "default:gravel 2",
	recipe = {{"better_gravel:dense_gravel"}},
})

-- Dense Gravel --> Cobble
if dense_gravel_cook then
	minetest.register_craft({
		type = "cooking",
		output = "default:cobble",
		recipe = "better_gravel:dense_gravel",
	})
end

if not minetest.get_modpath("moreblocks") and mossy_craft then
-- Cobble + Junglegrass --> Mossycobble
	minetest.register_craft({
		type = "shapeless",
		output = "default:mossycobble",
		recipe = {"default:junglegrass", "default:cobble"},
	})

-- Cobble + Grass --> Mossycobble
	minetest.register_craft({
		type = "shapeless",
		output = "default:mossycobble",
		recipe = {"default:grass_1", "default:cobble"},
	})
end

-- Cobble Drops 2 Gravel
if cobble_drop then
	minetest.override_item("default:cobble", {
		drop = "default:gravel 2",
	})
end

-- Mossycobble Drops 2 Gravel
if mossy_drop then
	minetest.override_item("default:mossycobble", {
		drop = "default:gravel 2",
	})
end

-- Generate Dense Gravel in Gravel
if dense_gravel_gen then
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "better_gravel:dense_gravel",
		wherein        = "default:gravel",
		clust_scarcity = 4*4*4,
		clust_num_ores = 3,
		clust_size     = 2,
		height_min     = -31000,
		height_max     = 100,
	})
end
