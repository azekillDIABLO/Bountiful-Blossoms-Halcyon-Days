minetest.register_craft({
	output = 'diamond_fist:fist',
	recipe = {
		{'default:diamond', 'default:diamond', 'default:diamond'},
		{'default:diamond_block', 'default:diamond_block', 'default:diamond'},
		{'default:diamond', 'default:diamond', 'default:diamond'},
	}
})

minetest.register_item("diamond_fist:fist", {
	type = "tool",
	inventory_image = "diamond_fist.png",
	wield_image = "diamond_fist.png^[transformfx",
	wield_scale = {x=1,y=1,z=3.5},
	description = "Diamod Fist",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level = 3,
		groupcaps = {
			crumbly = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			cracky = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			snappy = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			choppy = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=0, maxlevel=3},
			oddly_breakable_by_hand = {times={[1]=0.1, [2]=0.1, [3]=0.1}, uses=1000, maxlevel=3},
		}
	}
})