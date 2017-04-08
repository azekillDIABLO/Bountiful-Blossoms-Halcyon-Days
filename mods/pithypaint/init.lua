local size1x1 = {
	"binkiebaby:Binkie Baby",
	"frenchface:French Face",
	"green:Green",
	"jet:Jet",
	"mrjumpy:Mr. Jumpy",
	"orangeflower:Orange Flower",
	"peach:Peach",
	"pithy:Pithy",
	"web:Web"
}

local size1x2 = {
	"goodnight:Good Night",
	"snow:Snow",
	"whitepink:White Pink"
}

local size2x1 = {
	"autumn:Autumn",
	"brbasap:BRB ASAP",
	"claw:Claw",
	"eastmountain:East Mountain",
	"frost:Frost",
	"grapes:Grapes",
	"sun:Sun",
	"yellow:Yellow",
	"yelloweye:Yellow Eye"
}

local size2x2 = {
	"mountain:Mountain",
	"mouthofthebeast:Mouth of the Beast",
	"mrgrasshopper:Mr. Grasshopper"
}

local size2x3 = {
	"jumpkick:Jump Kick",
	"ladybug:Ladybug",
	"sky:Sky"
}

local size3x2 = {
	"elegantfrench:Elegant French",
	"oohbutterfly:Ooh Butterfly",
	"popcorntree:Popcorn Tree",
	"soccerorfootball:Soccer or Football",
	"spider:Spider"
}

for _,v in ipairs(size1x1) do
	local vars = v:split(':')
	minetest.register_node("pithypaint:"..vars[1], {
		description = "Painting: "..vars[2],
		drawtype = "nodebox",
		tiles = {"pithypaint_blank.png", "pithypaint_blank.png", "pithypaint_blank.png",
				"pithypaint_blank.png", "pithypaint_blank.png", "pithypaint_"..vars[1]..".png"},
		inventory_image = "pithypaint_"..vars[1]..".png",
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}
			},
		},
		groups = {dig_immediate = 2}
	})
end

for _,v in ipairs(size1x2) do
	local vars = v:split(':')
	minetest.register_node("pithypaint:"..vars[1], {
		description = "Painting: "..vars[2],
		drawtype = "mesh",
		mesh = "pithypaint1x2.obj",
		tiles = {"pithypaint_"..vars[1]..".png", "pithypaint_blank.png"},
		inventory_image = "pithypaint_"..vars[1].."_inv.png",
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -1.5, 0.4375, 0.5, 0.5, 0.5}
			},
		},
		groups = {dig_immediate = 2}
	})
end

for _,v in ipairs(size2x1) do
	local vars = v:split(':')
	minetest.register_node("pithypaint:"..vars[1], {
		description = "Painting: "..vars[2],
		drawtype = "mesh",
		mesh = "pithypaint2x1.obj",
		tiles = {"pithypaint_"..vars[1]..".png", "pithypaint_blank.png"},
		inventory_image = "pithypaint_"..vars[1].."_inv.png",
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.4375, 1.5, 0.5, 0.5}
			},
		},
		groups = {dig_immediate = 2}
	})
end

for _,v in ipairs(size2x2) do
	local vars = v:split(':')
	minetest.register_node("pithypaint:"..vars[1], {
		description = "Painting: "..vars[2],
		drawtype = "mesh",
		mesh = "pithypaint2x2.obj",
		tiles = {"pithypaint_"..vars[1]..".png", "pithypaint_blank.png"},
		inventory_image = "pithypaint_"..vars[1].."_inv.png",
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -1.5, 0.4375, 1.5, 0.5, 0.5}
			},
		},
		groups = {dig_immediate = 2}
	})
end

for _,v in ipairs(size2x3) do
	local vars = v:split(':')
	minetest.register_node("pithypaint:"..vars[1], {
		description = "Painting: "..vars[2],
		drawtype = "mesh",
		mesh = "pithypaint2x3.obj",
		tiles = {"pithypaint_"..vars[1]..".png", "pithypaint_blank.png"},
		inventory_image = "pithypaint_"..vars[1].."_inv.png",
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -2.5, 0.4375, 1.5, 0.5, 0.5}
			},
		},
		groups = {dig_immediate = 2}
	})
end

for _,v in ipairs(size3x2) do
	local vars = v:split(':')
	minetest.register_node("pithypaint:"..vars[1], {
		description = "Painting: "..vars[2],
		drawtype = "mesh",
		mesh = "pithypaint3x2.obj",
		tiles = {"pithypaint_"..vars[1]..".png", "pithypaint_blank.png"},
		inventory_image = "pithypaint_"..vars[1].."_inv.png",
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -1.5, 0.4375, 2.5, 0.5, 0.5}
			},
		},
		groups = {dig_immediate = 2}
	})
end
