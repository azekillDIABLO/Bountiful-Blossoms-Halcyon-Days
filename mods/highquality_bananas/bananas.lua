minetest.register_node("highquality_bananas:bananas", {
	description = "Bananas",
	drawtype = "plantlike",
	tiles = {"bananista.png"},
	inventory_image = "bananista.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	groups = {fleshy = 3, dig_immediate = 3,
		leafdecay = 3, leafdecay_drop = 1},
	on_use = function(itemstack, user, pointed_thing)
		hp_change = 3
		replace_with_item = nil

		minetest.chat_send_player(user:get_player_name(), "You've eaten Bananas from Ecuador")

		if itemstack:take_item() ~= nil then
			user:set_hp(user:get_hp() + hp_change)
		end

		return itemstack
	end
})
