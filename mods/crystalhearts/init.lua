--[[
Crystal Hearts by Neuromancer
Code License: CC0
Texture License: CC BY-SA 3.0
--]]


minetest.register_node("crystalhearts:crystalheart", {
	description = "Crystal Heart",
	drawtype = "glasslike",
	tiles = {"crystalheart.png"},
	paramtype = "light",
	use_texture_alpha = true,
	sunlight_propagates = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {cracky=3,oddly_breakable_by_hand=3},
		on_punch = function(pos, node, puncher) 
		reduce_hp(puncher)
		end
})

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "crystalhearts:crystalheart",
    wherein        = "default:stone",
    clust_scarcity = 12*12*12,
    clust_num_ores = 1,
    clust_size     = 3,
    height_min     = -31000,
    height_max     = -200,
})

function reduce_hp(player)
			hp = player:get_hp() 
			--hp = math.floor(hp+0.5)	 
			hp= hp-1
			player:set_hp(tonumber(hp))
end

print("Crystal Hearts Mod Loaded!")