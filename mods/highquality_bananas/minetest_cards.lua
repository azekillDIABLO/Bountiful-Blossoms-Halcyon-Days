local 	watermark		=		"MINETEST CARDS 0.1"  

local	name_card_1 	= 		"Realisticista Sam"
local	name_card_2 	= 		"Dirt Block"
local  name_card_3 	= 		"Sand Block"
local	name_card_4 	= 		"Water"
local	name_card_5 	= 		"Oerkki"
local 	name_card_6 	=		"Dungeon Master"
local 	name_card_7 	= 		"Alien"
local	name_card_8 	=		"The celeron55"
local	name_card_9 	= 		"Mese Block"
local 	name_card_10	=		"Apple"
local	name_card_11	=		"Wood"
local	name_card_12	=		"Nyan Cat"


local	desc_card_1 		= 		"'La paz do seu sorriso' \n is  the real deal."
local 	desc_card_2 		= 		"This block seemed as the most useless one in the universe gives you wood, which one gives you the possibility of mining stone, which one gives you the possibility of mining steel, which one gives you the possibility of mining Mese and Diamonds. Isn't that interesting?"
local 	desc_card_3		=		"You can observe these blocks relaxing in the beach of Acapulco"
local 	desc_card_4		=		"You can't drink it, there is also the fact that is totally unneeded in the Minetest world"
local 	desc_card_5		=		"He used to live in caves and dungeons, until the celeron55 just decided he was too ugly and of low-smartness for his game. Now he works in a scary house as the host"
local 	desc_card_6		=		"He got that name because he finished every dungeon game in less than a day."
local 	desc_card_7		=		"You can find great quantity of researches about this character in History Channel™. He used to harvest grain in the countryside of Canada before being chosen to be the principal character of the game"
local 	desc_card_8		=		"The almighty god, creator and leader of this game. Once upon a time his small creatures started to piss him off with shitposting; he deleted Offtopic. He uses hair conditioner for that beautiful hair of him btw"
local 	desc_card_9		=		"A wonderful ore based upon the MSN Messenger. Every time you send a 'buzz' through the Mese Chat a chinese person dies"
local 	desc_card_10		=		"'Have 99 of these in your inventory and you'll be invincible' said no one ever in a PVP server"
local 	desc_card_11		=		"The cornerstone of everything related to 'find diamonds and/or mese'"
local 	desc_card_12		=		"'All of this over a 16x16 representation of a cartoon cat ?!?! what has this world come to... '-TenPlus1, 2017"



local	imag_card_1 	= 	"card_1.png"  
local	imag_card_2 	= 	"card_2.png"  
local	imag_card_3 	= 	"card_3.png"  
local	imag_card_4 	= 	"card_4.png"  
local	imag_card_5 	= 	"card_5.png"
local	imag_card_6 	= 	"card_6.png"
local	imag_card_7 	= 	"card_7.png"
local	imag_card_8 	= 	"card_8.png"
local	imag_card_9 	= 	"card_9.png"
local	imag_card_10 	= 	"card_10.png"
local	imag_card_11 	= 	"card_11.png"
local	imag_card_12 	= 	"card_12.png"

local function mtcard_gui(user,namecard,description,img)
local cardname=""
if namecard==1 then cardname=name_card_1 end
if namecard==2 then cardname=name_card_2 end
if namecard==3 then cardname=name_card_3 end
if namecard==4 then cardname=name_card_4 end
if namecard==5 then cardname=name_card_5 end
if namecard==6 then cardname=name_card_6 end
if namecard==7 then cardname=name_card_7 end
if namecard==8 then cardname=name_card_8 end
if namecard==9 then cardname=name_card_9 end
if namecard==10 then cardname=name_card_10 end
if namecard==11 then cardname=name_card_11 end
if namecard==12 then cardname=name_card_12 end
local carddescription=""
if description==1 then carddescription=desc_card_1 end
if description==2 then carddescription=desc_card_2 end
if description==3 then carddescription=desc_card_3 end
if description==4 then carddescription=desc_card_4 end
if description==5 then carddescription=desc_card_5 end
if description==6 then carddescription=desc_card_6 end
if description==7 then carddescription=desc_card_7 end
if description==8 then carddescription=desc_card_8 end
if description==9 then carddescription=desc_card_9 end
if description==10 then carddescription=desc_card_10 end
if description==11 then carddescription=desc_card_11 end
if description==12 then carddescription=desc_card_12 end

local cardimg=""
if img==1 then cardimg=imag_card_1 end
if img==2 then cardimg=imag_card_2 end
if img==3 then cardimg=imag_card_3 end
if img==4 then cardimg=imag_card_4 end
if img==5 then cardimg=imag_card_5 end
if img==6 then cardimg=imag_card_6 end
if img==7 then cardimg=imag_card_7 end
if img==8 then cardimg=imag_card_8 end
if img==9 then cardimg=imag_card_9 end
if img==10 then cardimg=imag_card_10 end
if img==11 then cardimg=imag_card_11 end
if img==12 then cardimg=imag_card_12 end
local cardiform="size[4,8]" ..
				"background[0,0;4,8;card_bg.png;auto_clip]" ..
				"label[0.6,0.15;" .. cardname .. "]" ..
				"image[0.53,0.55;3.43,6.1;" ..cardimg.. "]" .. --image[X,Y;W,H;texture_name] ; label[X,Y;label]; textarea[X,Y;W,H;name;label;default]; textarea[0.81,6.4.0;2.97,1.2;name;;" .. carddescription .. "]
				--"label[0.53,6.4;" .. carddescription .. "]" ..
				"textarea[0.81,6.4.0;2.97,1.2;name;;" .. carddescription .. "]" ..
				"vertlabel[3.5,0.7;" .. watermark .. "]"
	minetest.show_formspec(user:get_player_name(), "highquality_bananas:card_form",cardiform)
end
	
minetest.register_craftitem("highquality_bananas:card_1", {
	description = "MT Card: " .. name_card_1,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,1,1,1)
	return itemstack
	end
})

minetest.register_craftitem("highquality_bananas:card_2", {
	description = "MT Card: " .. name_card_2 ,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,2,2,2)
	return itemstack
	end
})


minetest.register_craftitem("highquality_bananas:card_3", {
	description = "MT Card: " .. name_card_3,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,3,3,3)
	return itemstack
	end
})

minetest.register_craftitem("highquality_bananas:card_4", {
	description = "MT Card: " .. name_card_4,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,4,4,4)
	return itemstack
	end
})

minetest.register_craftitem("highquality_bananas:card_5", {
	description = "MT Card: " .. name_card_5,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,5,5,5)
	return itemstack
	end
})
minetest.register_craftitem("highquality_bananas:card_6", {
	description = "MT Card: " .. name_card_6,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,6,6,6)
	return itemstack
	end
})
minetest.register_craftitem("highquality_bananas:card_7", {
	description = "MT Card: " .. name_card_7,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,7,7,7)
	return itemstack
	end
})
minetest.register_craftitem("highquality_bananas:card_8", {
	description = "MT Card: " .. name_card_8 ,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,8,8,8)
	return itemstack
	end
})
minetest.register_craftitem("highquality_bananas:card_9", {
	description = "MT Card: " .. name_card_9,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,9,9,9)
	return itemstack
	end
})
minetest.register_craftitem("highquality_bananas:card_10", {
	description = "MT Card: " .. name_card_10,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,10,10,10)
	return itemstack
	end
})
minetest.register_craftitem("highquality_bananas:card_11", {
	description = "MT Card: " .. name_card_11,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,11,11,11)
	return itemstack
	end
})
minetest.register_craftitem("highquality_bananas:card_12", {
	description = "MT Card: " .. name_card_12,
	inventory_image = "card_rs.png",
		on_use = function(itemstack, user, pointed_thing)
	mtcard_gui(user,12,12,12)
	return itemstack
	end
})
