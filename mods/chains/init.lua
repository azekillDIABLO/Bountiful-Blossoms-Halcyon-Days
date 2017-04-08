print("[Chains] v1.1")

minetest.register_node("chains:chain", {
    description = "Chain",
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = "light",
    drops = "",
    tile_images = { "Chain.png" },
    drawtype = "plantlike",
    groups = {cracky=3},
    sounds =  default.node_sound_stone_defaults(),
    })
minetest.register_node("chains:chain_top", {
    description = "Chain Top",
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = "light",
    drops = "",
    tile_images = { "Chain_top.png" },
    drawtype = "plantlike",
    groups = {cracky=3},
    sounds =  default.node_sound_stone_defaults(),
    })
minetest.register_node("chains:chandelier", {
    description = "Chandelier",
    paramtype = "light",
    walkable = false,
    light_source = LIGHT_MAX-2,
    climbable = true,
    sunlight_propagates = true,
    paramtype = "light",
    drops = "",
    tile_images = { {name="Chandelier.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}},
    drawtype = "plantlike",
    groups = {cracky=3},
    sounds =  default.node_sound_stone_defaults(),
    })
minetest.register_craft({
	output = 'chains:chain',
	recipe = {
		{'default:steel_ingot'},
		{'default:steel_ingot'},
		{'default:steel_ingot'},
	}
})
minetest.register_craft({
	output = 'chains:chain_top',
	recipe = {
		{'default:steel_ingot'},
		{'chains:chain'},	
	},
})
minetest.register_craft({
	output = 'chains:chandelier',
	recipe = {
		{'', 'chains:chain', ''},
		{'default:torch', 'default:steel_ingot', 'default:torch'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})