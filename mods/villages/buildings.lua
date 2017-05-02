print("[VILLAGES] Buildings loading!")

BUILDINGS = {
	{
		name = 'default:wooden_house',
		size = {
			x = 8,
			y = 6,
			z = 7,
		},
		odds = 20,
		building_surfaces = {
			'default:dirt_with_grass',
		},
		structure = {
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{'default:tree', 'default:wood', 'default:wood', 'stairs:slab_wood', 'stairs:slab_wood',    'default:wood', 'default:wood', 'default:tree'},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood'},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood'},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood'},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood'},
				{'default:tree', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:tree'},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{'default:tree', 'default:wood', 'default:wood', air,    air,    'default:wood', 'default:wood', 'default:tree'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:tree', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:tree'},
			},
			{
				{air,    air,    'default:torch',   air,     air,    'default:torch',    air,    air},
				{'default:tree', 'default:glass', 'default:tree', air, air, 'default:tree', 'default:glass', 'default:tree'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:glass', air,    air,    air,    air,    air,    air,    'default:glass'},
				{'default:glass', air,    air,    air,    air,    air,    air,    'default:glass'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:tree', 'default:wood', 'default:glass', 'default:wood', 'default:wood', 'default:glass', 'default:wood', 'default:tree'},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{'default:tree', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:tree'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:tree', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:tree'},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', air,    air,    air,    air,    air,    air,    'default:wood'},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood'},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', air},
				{air,    'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', air},
				{air,    'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', air},
				{air,    'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', 'default:wood', air},
				{air,    air,    air,   air,     air,    air,    air,    air},
			},
		},
	},
	{
		name = 'default:cobble_house',
		size = {
			x = 8,
			y = 7,
			z = 7,
		},
		odds = 20,
		building_surfaces = {
			'default:dirt_with_grass',
		},
		structure = {
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{'default:tree', 'default:cobble', 'default:cobble', 'stairs:slab_cobble', 'stairs:slab_cobble',    'default:cobble', 'default:cobble', 'default:tree'},
				{'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble'},
				{'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble'},
				{'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble'},
				{'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble'},
				{'default:tree', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:tree'},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{'default:tree', 'default:cobble', 'default:cobble', air,    air,    'default:cobble', 'default:cobble', 'default:tree'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', 'firestone:firestone',    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:tree', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:tree'},
			},
			{
				{air,    air,    'default:torch',   air,     air,    'default:torch',    air,    air},
				{'default:tree', 'default:glass', 'default:tree', air, air, 'default:tree', 'default:glass', 'default:tree'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:glass', air,    air,    air,    air,    air,    air,    'default:glass'},
				{'default:glass', air,    air,    air,    air,    air,    air,    'default:glass'},
				{'default:cobble', 'firestone:flame',    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:tree', 'default:cobble', 'default:glass', 'default:cobble', 'default:cobble', 'default:glass', 'default:cobble', 'default:tree'},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{'default:tree', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:tree'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', 'firestone:chimney',    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:tree', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:tree'},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', air,    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', 'firestone:chimney',    air,    air,    air,    air,    air,    'default:cobble'},
				{'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble'},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', air},
				{air,    'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', air},
				{air,    'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', air},
				{air,    'firestone:chimney', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble', air},
				{air,    air,    air,   air,     air,    air,    air,    air},
			},
			{
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    air,    air,   air,     air,    air,    air,    air},
				{air,    'firestone:chimney',    air,   air,     air,    air,    air,    air},
				{air,    air,    air,   air,     air,    air,    air,    air},
			},
		},
	},
	{
		name = 'default:cobblestone_watchtower',
		size = {
			x = 4,
			y = 9,
			z = 4,
		},
		odds = 20,
		building_surfaces = {
			'default:dirt_with_grass',
			'default:sand',
		},
		structure = {
			{
				{air, 'default:cobble', 'default:cobble', air},
				{'default:cobble', air, air, 'default:cobble'},
				{'default:cobble', air, air, 'default:cobble'},
				{air, 'default:cobble', 'default:cobble', air},
			},
			{
				{air, air, air, air},
				{"chains:chain", 'default:cobble', 'default:cobble', air},
				{air, 'default:cobble', 'default:cobble', air},
				{air, air, air, air},
			},
			{
				{air, air, air, air},
				{"chains:chain", 'default:cobble', 'default:cobble', air},
				{air, 'default:cobble', 'default:cobble', air},
				{air, air, air, air},
			},
			{
				{air, air, air, air},
				{"chains:chain", 'default:cobble', 'default:cobble', air},
				{air, 'default:cobble', 'default:cobble', air},
				{air, air, air, air},
			},
			{
				{air, air, air, air},
				{"chains:chain", 'default:cobble', 'default:cobble', air},
				{air, 'default:cobble', 'default:cobble', air},
				{air, air, air, air},
			},
			{
				{'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble'},
				{"chains:chain", air, air, 'default:cobble'},
				{'default:cobble', air, air, 'default:cobble'},
				{'default:cobble', 'default:cobble', 'default:cobble', 'default:cobble'},
			},
			{
				{'default:fence_wood', 'default:fence_wood', 'default:fence_wood', 'default:fence_wood'},
				{"chains:chain_top", 'default:torch', 'default:torch', 'default:fence_wood'},
				{'default:fence_wood', 'default:torch', 'default:torch', 'default:fence_wood'},
				{'default:fence_wood', 'default:fence_wood', 'default:fence_wood', 'default:fence_wood'},
			},
			{
				{'default:wood', 'default:wood', 'default:wood', 'default:wood'},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood'},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood'},
				{'default:wood', 'default:wood', 'default:wood', 'default:wood'},
			},
			{
				{air, air, air, air},
				{air, 'default:wood', 'default:wood', air},
				{air, 'default:wood', 'default:wood', air},
				{air, air, air, air},
			},
		},
	},
	{
		name = 'default:cobblestone_watchtower_ruin',
		size = {
			x = 4,
			y = 9,
			z = 4,
		},
		odds = 20,
		building_surfaces = {
			'default:dirt_with_grass',
			'default:sand',
		},
		structure = {
			{
				{air, air, 'default:cobble', air},
				{'default:mossycobble', air, air, air},
				{'default:cobble', air, air, air},
				{air, 'default:cobble', 'default:mossycobble', air},
			},
			{
				{air, air, air, air},
				{air, 'default:mossycobble', 'default:cobble', air},
				{air, 'default:cobble', air, air},
				{air, air, air, air},
			},
			{
				{air, air, air, air},
				{air, 'default:cobble', 'default:mossycobble', air},
				{air, air, 'default:cobble', air},
				{air, air, air, air},
			},
			{
				{air, air, air, air},
				{air, air, 'default:mossycobble', air},
				{air, air, air, air},
				{air, air, air, air},
			},
			{
				{air, air, air, air},
				{air, 'default:cobble', 'default:cobble', air},
				{air, 'default:mossycobble', air, air},
				{air, air, air, air},
			},
			{
				{'default:cobble', air, 'default:cobble', air},
				{'default:cobble', 'default:mossycobble', air, 'default:mossycobble'},
				{'default:cobble', 'default:mossycobble', air, 'default:cobble'},
				{'default:cobble', air, air, 'default:mossycobble'},
			},
			{
				{air, air, 'default:fence_wood', air},
				{'default:fence_wood', 'default:torch', air, air},
				{'default:fence_wood', air, air, air},
				{air, air, air, 'default:fence_wood'},
			},
			{
				{air, air, 'default:wood', air},
				{'default:wood', air, air, 'default:wood'},
				{'chains:chain_top', air, air, 'default:wood'},
				{air, 'default:wood', 'default:wood', 'default:wood'},
			},
			{
				{air, air, air, air},
				{air, air, air, air},
				{air, 'default:wood', 'default:wood', air},
				{air, air, air, air},
			},
		},
	},
}