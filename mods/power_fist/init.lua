minetest.register_craft({
	output = 'power_fist:fist',
	recipe = {
		{'default:diamond', 'default:diamond', 'default:diamond'},
		{'default:mese', 'default:mese', 'default:diamond'},
		{'default:diamond', 'default:mese', 'default:diamond'},
	}
})

minetest.register_item("power_fist:fist", {
	type = "tool",
	inventory_image = "power_fist.png",
	wield_image = "power_fist.png",
	wield_scale = {x=2,y=2,z=3.5},
	description = "Power Fist",
	tool_capabilities = {
		full_punch_interval = 0.0,
		max_drop_level = 3,
		groupcaps = {
			crumbly = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=0, maxlevel=3},
			cracky = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=0, maxlevel=3},
			snappy = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=0, maxlevel=3},
			choppy = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=0, maxlevel=3},
			oddly_breakable_by_hand = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=1000, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	}
})