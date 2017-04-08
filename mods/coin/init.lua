----------------------
-- COIN MOD - v 1.0 	--
-- by azekill_DIABLO 	--
----------------------
-- Licence: LGPL v2.1 	--
-- for whole product	--
----------------------

-- 
minetest.register_craftitem("coin:basic",{
	description="Coin",
	stack_max=100,
	inventory_image="coin_basic.png"
})

minetest.register_craft({
	output="coin:basic 36",
	recipe={
		{"","default:mese",""},
		{"default:mese","default:mese","default:mese"},
		{"","default:mese",""}
	}
})