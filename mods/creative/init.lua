-- minetest/creative/init.lua

creative_inventory = {}
creative_inventory.creative_inventory_size = 0

-- Create detached creative inventory after loading all mods
minetest.after(0, function()
	local inv = minetest.create_detached_inventory("creative", {
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			if minetest.setting_getbool("creative_mode") then
				return count
			else
				return 0
			end
		end,
		allow_put = function(inv, listname, index, stack, player)
			return 0
		end,
		allow_take = function(inv, listname, index, stack, player)
			if minetest.setting_getbool("creative_mode") then
				return -1
			else
				return 0
			end
		end,
		on_move = function(inv, from_list, from_index, to_list, to_index, count, player)
		end,
		on_put = function(inv, listname, index, stack, player)
		end,
		on_take = function(inv, listname, index, stack, player)
			--print(player:get_player_name().." takes item from creative inventory; listname="..dump(listname)..", index="..dump(index)..", stack="..dump(stack))
			if stack then
				minetest.log("action", player:get_player_name().." takes "..dump(stack:get_name()).." from creative inventory")
				--print("stack:get_name()="..dump(stack:get_name())..", stack:get_count()="..dump(stack:get_count()))
			end
		end,
	})
	local creative_list = {}
	for name,def in pairs(minetest.registered_items) do
		if (not def.groups.not_in_creative_inventory or def.groups.not_in_creative_inventory == 0)
				and def.description and def.description ~= "" then
			table.insert(creative_list, name)
		end
	end
	table.sort(creative_list)
	inv:set_size("main", #creative_list)
	for _,itemstring in ipairs(creative_list) do
		inv:add_item("main", ItemStack(itemstring))
	end
	creative_inventory.creative_inventory_size = #creative_list
	--print("creative inventory size: "..dump(creative_inventory.creative_inventory_size))
end)

-- Create the trash field
local trash = minetest.create_detached_inventory("creative_trash", {
	-- Allow the stack to be placed and remove it in on_put()
	-- This allows the creative inventory to restore the stack
	allow_put = function(inv, listname, index, stack, player)
		return stack:get_count()
	end,
	on_put = function(inv, listname)
		inv:set_list(listname, {})
	end,
})
trash:set_size("main", 1)

creative_inventory.set_creative_formspec = function(player, start_i, pagenum)
	pagenum = math.floor(pagenum)
	local pagemax = math.floor((creative_inventory.creative_inventory_size-1) / (8*1) + 1)
	player:set_inventory_formspec(
			"size[10,7]"..
			--"image[6,0.6;1,2;player.png]"..
			"list[current_player;main;6,3;4,4;]"..
			"list[current_player;craft;0,4;3,3;]"..
			"list[current_player;craftpreview;3,5;1,1;]"..
			"list[detached:creative;main;0,0;10,1;"..tostring(start_i).."]"..
			"button[3.1,1;1.6,1;creative_prev;<==]"..
			"button[5.5,1;1.6,1;creative_next;==>]"..
			"image[-0.05,0.999.2;1.17,1.157;creative_trash_icon.png]"..
			"list[detached:creative_trash;main;0,1.06;1,1;]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			"listring[detached:creative;main]"..
			"label[6,2.5;Inventory {16 slots}:]"..
			"label[0,3.5;Crafting:]"
	)
end
minetest.register_on_joinplayer(function(player)
	-- If in creative mode, modify player's inventory forms
	if not minetest.setting_getbool("creative_mode") then
		return
	end
	creative_inventory.set_creative_formspec(player, 0, 1)
end)
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if not minetest.setting_getbool("creative_mode") then
		return
	end
	-- Figure out current page from formspec
	local current_page = 0
	local formspec = player:get_inventory_formspec()
	local start_i = string.match(formspec, "list%[detached:creative;main;[%d.]+,[%d.]+;[%d.]+,[%d.]+;(%d+)%]")
	start_i = tonumber(start_i) or 0

	if fields.creative_prev then
		start_i = start_i - 8*1
	end
	if fields.creative_next then
		start_i = start_i + 8*1
	end

	if start_i < 0 then
		start_i = start_i + 8*1
	end
	if start_i >= creative_inventory.creative_inventory_size then
		start_i = start_i - 8*1
	end
		
	if start_i < 0 or start_i >= creative_inventory.creative_inventory_size then
		start_i = 0
	end

	creative_inventory.set_creative_formspec(player, start_i, start_i / (6*4) + 1)
end)

if minetest.setting_getbool("creative_mode") then
	local digtime = 1
	minetest.register_item(":", {
		type = "none",
		wield_image = "wieldhand.png",
		range = 10,
		tool_capabilities = {
			full_punch_interval = 0.5,
			max_drop_level = 3,
			groupcaps = {
				crumbly = {times={[1]=digtime, [2]=digtime, [3]=digtime}, uses=0, maxlevel=3},
				cracky = {times={[1]=digtime, [2]=digtime, [3]=digtime}, uses=0, maxlevel=3},
				snappy = {times={[1]=digtime, [2]=digtime, [3]=digtime}, uses=0, maxlevel=3},
				choppy = {times={[1]=digtime, [2]=digtime, [3]=digtime}, uses=0, maxlevel=3},
				oddly_breakable_by_hand = {times={[1]=digtime, [2]=digtime, [3]=digtime}, uses=0, maxlevel=3},
			},
			damage_groups = {fleshy = 10},
		}
	})
	
	minetest.register_on_placenode(function(pos, newnode, placer, oldnode, itemstack)
		return true
	end)
	
	function minetest.handle_node_drops(pos, drops, digger)
		if not digger or not digger:is_player() then
			return
		end
		local inv = digger:get_inventory()
		if inv then
			for _,item in ipairs(drops) do
				item = ItemStack(item):get_name()
				if not inv:contains_item("main", item) then
					inv:add_item("main", item)
				end
			end
		end
	end
	
end
