--[[

Armor for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-armor
License: GPLv3

API

]]--



-- expose api
armor = {}

-- get_armor_level
armor.get_armor_level = function(stack,armor_type)
	if stack then
		return stack:get_definition().groups[armor_type]
	end
end

-- set_armor_groups
armor.set_armor_groups = function(player)
	local level
	local armor_groups = {level=3,fleshy=3,snappy=3,choppy=3}
	player_inv = player:get_inventory()

	-- helmet
	level = armor.get_armor_level(player_inv:get_stack("armor_helmet", 1),"armor_helmet")
	if level~=nil then
		armor_groups.level = level
	end
	-- chest
	level = armor.get_armor_level(player_inv:get_stack("armor_chest", 1),"armor_chest")
	if level~=nil then
		armor_groups.fleshy = level
	end
	-- boots
	level = armor.get_armor_level(player_inv:get_stack("armor_boots", 1),"armor_boots")
	if level~=nil then
		armor_groups.snappy = level
	end
	-- shield
	level = armor.get_armor_level(player_inv:get_stack("armor_shield", 1),"armor_shield")
	if level~=nil then
		armor_groups.choppy = level
	end

	player:set_armor_groups(armor_groups)
	print(dump(armor_groups))
end

-- register armor
armor.register_armor = function(mod_name,name,label,material,level)

	-- tools
	minetest.register_tool(mod_name..":"..name.."_helmet", {
		description = label.." Helmet",
		inventory_image = mod_name.."_"..name.."_helmet.png",
		groups = {armor_helmet=level},
		wear = 0,
	})
	minetest.register_tool(mod_name..":"..name.."_chest", {
		description = label.." Chestplate",
		inventory_image = mod_name.."_"..name.."_chest.png",
		groups = {armor_chest=level},
		wear = 0,
	})
	minetest.register_tool(mod_name..":"..name.."_boots", {
		description = label.." Boots",
		inventory_image = mod_name.."_"..name.."_boots.png",
		groups = {armor_boots=level},
		wear = 0,
	})
	minetest.register_tool(mod_name..":"..name.."_shield", {
		description = label.." Shield",
		inventory_image = mod_name.."_"..name.."_shield.png",
		groups = {armor_shield=level},
		wear = 0,
	})

	-- crafts
	minetest.register_craft({
		output = mod_name..":"..name.."_helmet",
		recipe = {
			{material, material, material},
			{material, "", material},
			{material, "", material},
		},
	})
	minetest.register_craft({
		output = mod_name..":"..name.."_chest",
		recipe = {
			{material, material, material},
			{"", material, ""},
			{"", material, ""},
		},
	})
	minetest.register_craft({
		output = mod_name..":"..name.."_boots",
		recipe = {
			{material, "", material},
			{material, "", material},
			{material, "", material},
		},
	})
	minetest.register_craft({
		output = mod_name..":"..name.."_shield",
		recipe = {
			{material, material, material},
			{material, material, material},
			{"", material, ""},
		},
	})
	
end

