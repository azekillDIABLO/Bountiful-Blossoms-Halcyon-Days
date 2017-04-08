Minetest mod "Hungry"
=======================
version: 0.1

License of source code: WTFPL
-----------------------------
Written 2013 by BlockMen

This program is free software. It comes without any warranty, to
the extent permitted by applicable law. You can redistribute it
and/or modify it under the terms of the Do What The Fuck You Want
To Public License, Version 2, as published by Sam Hocevar. See
http://sam.zoy.org/wtfpl/COPYING for more details.


--USING the mod--
------------------

This is a mod for testing the new lua hud. Every 4 seconds the player gets healed when you have eaten enough (9 apples).

If you have just 1/2 apple left every 4 seconds the player gets hurt, but just until 1/2 heart left.

Yo can eat (currently just) apples to fill up the hunger bar. 1 apples gives 2 apples in bar.


Because this is just a TEST-mod the player "uses" 1/2 apple every 15 seconds. You can change that in init.lua by
setting loose_hunger = #every full number#