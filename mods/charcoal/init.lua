--[[
Charcoal
========

Copyright (c) 2012 Gal Buki <torusJKL@gmail.com>

Version: 0.2

Depends: default

License for code:
GPLv2 or later
(http://www.gnu.org/licenses/gpl-2.0.html)

License for texture:
Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0)
(http://creativecommons.org/licenses/by-sa/3.0/)
--]]

local modname = "charcoal"

--
-- Crafting definition
--

minetest.register_craft({
        output = 'default:torch 4',
        recipe = {
                {'charcoal:charcoal_lump'},
                {'default:stick'},
        }
})

minetest.register_craft({
        type = "fuel",
        recipe = "charcoal:charcoal_lump",
        burntime = 40,
})

--
-- Cooking recipes
--

minetest.register_craft({
        type = "cooking",
        output = "charcoal:charcoal_lump",
        recipe = "default:tree",
})

minetest.register_craft({
        type = "cooking",
        output = "charcoal:charcoal_lump",
        recipe = "default:jungletree",
})

--
-- Crafting items
--

minetest.register_craftitem("charcoal:charcoal_lump", {
        description = "Lump of charcoal",
        inventory_image = "charcoal_lump.png",
})
