--[[

Armor for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-particles
License: GPLv3

]]--

-- load api
dofile(minetest.get_modpath("armor").."/api.lua")

-- get_formspec
local get_formspec = function(player,page)
	return "size[8,7]"
		.."button[0,0;2,0.5;main;Back]"
		.."list[current_player;main;0,3.5;8,2;]"
		.."list[detached:"..player:get_player_name().."_armor;armor_helmet;3,0;1,1;]"
		.."list[detached:"..player:get_player_name().."_armor;armor_chest;3,1;1,1;]"
		.."list[detached:"..player:get_player_name().."_armor;armor_boots;3,2;1,1;]"
		.."list[detached:"..player:get_player_name().."_armor;armor_shield;5,1;1,1;]"
		.."image[4,0.5;1,2;player.png]"
end

-- register_on_player_receive_fields
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if fields.armor then
		inventory_plus.set_inventory_formspec(player, get_formspec(player,"armor"))
		return
	end
end)

-- register_on_joinplayer
minetest.register_on_joinplayer(function(player)
	--inventory_plus.register_button(player,"armor","Armor")
	local player_inv = player:get_inventory()
	local armor_inv = minetest.create_detached_inventory(player:get_player_name().."_armor",{
		on_put = function(inv, listname, index, stack, player)
			player:get_inventory():set_stack(listname, index, stack)
			armor.set_armor_groups(player)
		end,
		on_take = function(inv, listname, index, stack, player)
			player:get_inventory():set_stack(listname, index, nil)
			armor.set_armor_groups(player)
		end,
		allow_put = function(inv, listname, index, stack, player)
			if inv:is_empty(listname) and armor.get_armor_level(stack,listname) then
				return 1
			else
				return 0
			end
		end,
		allow_take = function(inv, listname, index, stack, player)
			return stack:get_count()
		end,
		allow_move = function(inv, from_list, from_index, to_list, to_index, count, player)
			return 0
		end,
	})
	for _,v in ipairs({"boots","chest","helmet","shield"}) do
		local armor = "armor_"..v
		player_inv:set_size(armor, 1)
		armor_inv:set_size(armor, 1)
		armor_inv:set_stack(armor,1,player_inv:get_stack(armor,1))
	end
	armor.set_armor_groups(player)
end)

-- register armors
local armors = {
	{name="wood",label="Wooden",material="default:wood",level=2},
	{name="steel",label="Steel",material="default:steel_ingot",level=1},
	{name="mese",label="Mese",material="default:mese",level=4},
}
for _,params in pairs(armors) do
	armor.register_armor("armor",params.name,params.label,params.material,params.level)
end

-- log that we started
minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded from "..minetest.get_modpath(minetest.get_current_modname()))