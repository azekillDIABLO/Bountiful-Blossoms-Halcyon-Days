minetest.override_item("default:dirt", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	}
})

minetest.override_item("default:dirt_with_grass", {
	groups = {crumbly=3,soil=1},
	soil = {
		base = "default:dirt_with_grass",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	}
})

minetest.register_node("farming:soil", {
	description = "Soil",
	tiles = {"default_dirt.png^farming_soil.png", "default_dirt.png"},
	drop = "default:dirt",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=2, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	}
})

minetest.register_node("farming:soil_wet", {
	description = "Wet Soil",
	tiles = {"default_dirt.png^farming_soil_wet.png", "default_dirt.png^farming_soil_wet_side.png"},
	drop = "default:dirt",
	is_ground_content = true,
	groups = {crumbly=3, not_in_creative_inventory=1, soil=3, wet = 1, grassland = 1, field = 1},
	sounds = default.node_sound_dirt_defaults(),
	soil = {
		base = "default:dirt",
		dry = "farming:soil",
		wet = "farming:soil_wet"
	}
})

minetest.register_node("farming:straw", {
	description = "Straw",
	tiles = {"farming_straw.png"},
	is_ground_content = false,
	groups = {snappy=3, flammable=4},
	sounds = default.node_sound_leaves_defaults(),
})

--needs much optimization
farming.maxwet = 5;
farming.debug = true;
minetest.register_abm({
	nodenames = {"group:field"},
	interval = 15,
	chance = 4,
	action = function(pos, node)
		-- check if there is wet nodes nearby
		wet = get_max_wet(pos)
		if minetest.find_node_near(pos, 1, {"group:water"}) then
			-- if it is dry soil turn it into wet soil 
			if node.name == "farming:soil" then
				minetest.set_node(pos, {name="farming:soil_wet"})
				local meta = minetest.get_meta(pos)
				meta:set_int("wet", farming.maxwet)	
				if farming.debug then meta:set_string("infotext", "WET: "..farming.maxwet) end
			
			elseif node.name == "farming:soil_wet" then
				local meta = minetest.get_meta(pos)	--update existing
				meta:set_int("wet", farming.maxwet)
				if farming.debug then meta:set_string("infotext", "WET: "..farming.maxwet) end
				
			end
		
		elseif minetest.find_node_near(pos, 1, {"farming:soil_wet"}) then
		
		
			if node.name == "farming:soil" and wet >=1 then				
				minetest.set_node(pos, {name="farming:soil_wet"})--set to wet soil
				local meta = minetest.get_meta(pos)	
				 if farming.debug then meta:set_string("infotext", "WET: "..wet-1) end
				meta:set_int("wet", wet-1)
			elseif node.name == "farming:soil_wet" and wet >=1 then 
				local meta = minetest.get_meta(pos)	--update the wet soil
				if farming.debug then meta:set_string("infotext", "WET: "..wet-1) end
				meta:set_int("wet", wet-1)
			elseif node.name == "farming:soil_wet" and wet <=1 then--set dry soil
				minetest.set_node(pos, {name="farming:soil"})				
			end
		elseif node.name == "farming:soil" and  minetest.get_node(minetest.string_to_pos(pos.x ..","..pos.y+1 ..","..pos.z)).name == "farming:weed" then
			minetest.set_node(pos, {name="default:dirt_with_grass"})--replace dry soil with air with dirt_with_grass
			pos.y = pos.y+1
			minetest.set_node(pos, {name="air"})
			pos.y = pos.y-1
		elseif node.name == "farming:soil" and wet <=0 and minetest.find_node_near(pos, 1, {"default:dirt_with_grass"}) then
			minetest.set_node(pos, {name="default:dirt"})--revert 
		end
	end,
})


function get_max_wet(pos)
			local north = minetest.string_to_pos(pos.x+1 ..","..pos.y..","..pos.z)			
			local south = minetest.string_to_pos(pos.x-1 ..","..pos.y..","..pos.z)
			local east = minetest.string_to_pos(pos.x..","..pos.y..","..pos.z+1)
			local west = minetest.string_to_pos(pos.x..","..pos.y..","..pos.z-1)
			
			
			local meta = minetest.get_meta(north)	
			n = meta:get_int("wet")
			if n == nil then
			 n = 0 
			end
			north.y = north.y+1
			local meta = minetest.get_meta(north)
			np = meta:get_int("wet")
			if np == nil then
			 np = 0 
			end
			
			
			local meta = minetest.get_meta(south)
			s = meta:get_int("wet")
			if s == nil then 
				s = 0 
			end
			south.y = south.y+1
			local meta = minetest.get_meta(south)
			sp = meta:get_int("wet")
			if sp == nil then 
				sp = 0 
			end
			
			
			local meta = minetest.get_meta(east)	
			e = meta:get_int("wet")
			if e == nil then
				e = 0 
			end
			east.y = east.y+1
			local meta = minetest.get_meta(east)	
			ep = meta:get_int("wet")
			if ep == nil then
				ep = 0 
			end
			
			
			local meta = minetest.get_meta(west)
			w = meta:get_int("wet")
			if w == nil then 
				w = 0 
			end
			west.y = west.y+1
			local meta = minetest.get_meta(west)
			wp = meta:get_int("wet")
			if wp == nil then 
				wp = 0 
			end
			maxima = math.max(n,np,s,sp,e,ep,w,wp)
			return maxima
end	
--old abm
--[[minetest.register_abm({
	nodenames = {"group:field"},
	interval = 15,
	chance = 4,
	action = function(pos, node)
		local n_def = minetest.registered_nodes[node.name] or nil
		local wet = n_def.soil.wet or nil
		local base = n_def.soil.base or nil
		local dry = n_def.soil.dry or nil
		if not n_def or not n_def.soil or not wet or not base or not dry then
			return
		end

		pos.y = pos.y + 1
		local nn = minetest.get_node_or_nil(pos)
		if not nn or not nn.name then
			return
		end
		local nn_def = minetest.registered_nodes[nn.name] or nil
		pos.y = pos.y - 1
		
		if nn_def and nn_def.walkable and minetest.get_item_group(nn.name, "plant") == 0 then
			minetest.set_node(pos, {name = base})
			return
		end
		-- check if there is water nearby
		local wet_lvl = minetest.get_item_group(node.name, "wet")
		if minetest.find_node_near(pos, 3, {"group:water"}) then
			-- if it is dry soil and not base node, turn it into wet soil
			if wet_lvl == 0 then --wet level is always 0 ! dont know what this is doing here
				minetest.set_node(pos, {name = wet})
			end
		else
			-- only turn back if there are no unloaded blocks (and therefore
			-- possible water sources) nearby
			if not minetest.find_node_near(pos, 3, {"ignore"}) then
				-- turn it back into base if it is already dry
				if wet_lvl == 0 then
					-- only turn it back if there is no plant/seed on top of it
					if minetest.get_item_group(nn.name, "plant") == 0 and minetest.get_item_group(nn.name, "seed") == 0 then
						minetest.set_node(pos, {name = base})
					end
					
				-- if its wet turn it back into dry soil
				elseif wet_lvl == 1 then
					minetest.set_node(pos, {name = dry})
				end
			end
		end
	end,
})
]]
	
minetest.override_item("default:junglegrass", {drop = {
	max_items = 1,
	items = {
		{items = {'farming:seed_cotton'},rarity = 8},
		{items = {'default:junglegrass'}},
	}
}})
