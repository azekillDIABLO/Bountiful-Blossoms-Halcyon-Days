local rune = {}
rune.pick_types = { 
  "default:pick_wood",
  "default:pick_stone",
  "default:pick_steel",
  "default:pick_bronze",
  "default:pick_mese",
  "default:pick_diamond",
  "default:pick_silver",
  "default:pick_gold",
  "default:pick_nyan"
}

rune.types = {
  "coal",
  "iron",
  "tin",
  "copper",
  "silver",
  "gold",
  "diamond",
  "mese"
}

rune.search_size = 7

for i, p in ipairs(rune.pick_types) do
  minetest.register_craft({
    output = "runes:miner_inactive_coal",
    recipe = { {p}, {"group:stone"}}
  })
end

function rune.search_ore(pos, node)
  local meta = minetest.get_meta(pos)
  local rune_type_idx = meta:get_int("runes:type")
  if(rune_type_idx<0) then
    return
  end
  local rune_type = rune.types[rune_type_idx]
  local res = minetest.find_node_near(pos, rune.search_size, "default:stone_with_"..rune_type)
  if res then
    local wy, wy, wz
    local dx = math.floor(res.x - pos.x)
    local dy = math.floor(res.y - pos.y)
    local dz = math.floor(res.z - pos.z)
    
    if (dy > 0) then 
      wy = ", "..dy.." above"
    elseif (dy==0) then 
      wy = ""
    else 
      wy = ", "..(-dy).." below"
    end
    
    local dir = node.param2
    minetest.debug("param2="..dir.." dx="..dx.." dy="..dy.." dz="..dz)
    
    if (dir==1) or (dir==2) then 
      dx = -dx
      dz = -dz
    elseif dir==4 then
      local t = dx
      dx = -dz
      dz = t
    elseif dir==5 then
      local t = dx
      dx = dz
      dz = -t
    end
    
    if (dx > 0) then 
      wx = dx.." steps backward"
    else
      wx = (-dx).." steps forward"
    end
    
    if (dz > 0) then 
      wz = ", "..dz.." right"
    elseif (dz==0) then
      wz= ""
    else
      wz =", "..(-dz).." left"
    end
    
    meta:set_string("infotext", "Found "..rune_type.." "..wx..wz..wy)
  else
    meta:set_string("infotext", "No "..rune_type.." found in the surrounding area.")
  end
end


function rune.handle_rightclick(pos, node, clicker)
  local meta = minetest.get_meta(pos)
  local rune_type_idx = meta:get_int("runes:type")
  if(rune_type_idx<0) then
    rune_type_idx = -rune_type_idx
  else 
    repeat
      rune_type_idx = rune_type_idx + 1
      if rune_type_idx > #rune.types then
        rune_type_idx = 1
      end
    until minetest.registered_nodes["default:stone_with_"..rune.types[rune_type_idx]]
  end
  local rune_type = rune.types[rune_type_idx]
  minetest.swap_node(pos, {name="runes:miner_"..rune_type, param1=node.param1, param2=node.param2 })
  meta:set_int("runes:type", rune_type_idx)
  rune.search_ore(pos, node)
end


for i, t in ipairs(rune.types) do
  minetest.register_node("runes:miner_inactive_"..t, {
    description = "Rune",
    drawtype = "signlike",
    tiles = {"runes_miner.png"},
    inventory_image = "runes_miner.png",
    paramtype = "light",
    paramtype2 = "wallmounted",
    sunlight_propagates = true,
    walkable = false,
    selection_box = {type = "wallmounted"},
    groups = {choppy = 2, dig_immediate = 2},
    on_rightclick = function(pos, node, clicker)
      rune.handle_rightclick(pos, node, clicker)
    end,
    on_construct = function(pos)
      local meta = minetest.get_meta(pos)
      meta:set_string("infotext", "Activate me (right click) to find ores in the surroundig area.")
      meta:set_int("runes:type", -i)
    end,
  })

  minetest.register_node("runes:miner_"..t, {
    description = "Rune",
    drawtype = "signlike",
    tiles = {"runes_miner.png^runes_miner_"..t..".png"},
    inventory_image = "runes_miner.png^runes_miner_"..t..".png",
    paramtype = "light",
    paramtype2 = "wallmounted",
    drop = "runes:miner_inactive_"..t,
    sunlight_propagates = true,
    walkable = false,
    selection_box = {type = "wallmounted"},
    groups = {choppy = 2, dig_immediate = 2},
    on_rightclick = function(pos, node, clicker)
      rune.handle_rightclick(pos, node, clicker)
    end,
    on_punch = function(pos, node, clicker)
      rune.search_ore(pos, node)
    end,
  })
end

