local player_pos = {}
local player_speeds_y = {}

local timer = 0
minetest.register_globalstep(function(dtime)
	if timer >= 0.25 then
		player_speeds = {}
		-- Update player positions
		for _, p in ipairs(minetest.get_connected_players()) do
			local name = p:get_player_name()
			-- Calculate player's velocity if last position is known
			if player_pos[name] ~= nil then
				player_speeds_y[name] = (player_pos[name].y -  p:getpos().y) / timer
			else
				print("Cannot calculate player speed on first server step.")
			end
			-- Set new pos
			player_pos[name] = p:getpos()
		end
		timer = 0
	end
	timer = timer + dtime
end)

function player_getvelocity(player)
	local name = player:get_player_name()
	return player_speeds_y[name]
end