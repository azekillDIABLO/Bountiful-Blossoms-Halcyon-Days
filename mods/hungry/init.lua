local hudid = nil
local guy = nil
local hunger = 20
local enable_hunger = minetest.setting_getbool("enable_damage") -- set to false if no hunger wanted
local loose_hunger = 20  --20 is a bit fast it's for testing

local myhud =
{
    hud_elem_type = "statbar",
    position = {x=0.352, y=0.870},
    scale = {x=1, y=1},
    text = "default_apple.png",
    number = 20,
}

minetest.register_on_joinplayer(function(player)
	minetest.after(0.5, function(param) 
		hudid = player:hud_add(myhud)
	guy = player
	end)
end)

local timer = 0
local timer2 = 0
minetest.register_globalstep(function(dtime)
 if hudid ~= nil and guy ~= nil then
	timer = timer + dtime;
	if timer >= 4 then
		timer = 0
		if hunger >= 18 then
			guy:set_hp(guy:get_hp()+1)
		elseif hunger == 1 and enable_hunger == true then
			if guy:get_hp()-1 >= 1 then 
				guy:set_hp(guy:get_hp()-1)
			end
		end
	end

	if enable_hunger == true then
		timer2 = timer2 + dtime;
		if timer2 >= loose_hunger then --later 300 (5min)
			timer2 = 0
			if hunger > 1 then
				hunger = hunger - 1
				guy:hud_change(hudid, "number", hunger) 
			end
		end
	end
 end
end)

--using a very hacky way to make simple food registration

minetest.override_item("default:apple", {
	on_use = function(itemstack, user, pointed_thing)
	local food = 4
	if hunger+food <= 20 then
		hunger = hunger + food
		itemstack:take_item()
	else
		hunger = 20
	end
	user:hud_change(hudid, "number", hunger)
	return itemstack
end
})

