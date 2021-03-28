-- internationalization boilerplate
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

minetest.register_craftitem("hades_digtron:digtron_core", {
	description = S("Digtron Core"),
	inventory_image = "digtron_core.png",
	_doc_items_longdesc = digtron.doc.core_longdesc,
    _doc_items_usagehelp = digtron.doc.core_usagehelp,
})

minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"","hades_core:steel_ingot",""},
			{"hades_core:steel_ingot","hades_core:mese_crystal_fragment","hades_core:steel_ingot"},
			{"","hades_core:steel_ingot",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:controller",
	recipe = {
			{"","hades_core:mese_crystal",""},
			{"hades_core:mese_crystal","hades_digtron:digtron_core","hades_core:mese_crystal"},
			{"","hades_core:mese_crystal",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:auto_controller",
	recipe = {
			{"hades_core:mese_crystal","hades_core:mese_crystal","hades_core:mese_crystal"},
			{"hades_core:mese_crystal","hades_digtron:digtron_core","hades_core:mese_crystal"},
			{"hades_core:mese_crystal","hades_core:mese_crystal","hades_core:mese_crystal"}
			}
})

minetest.register_craft({
	output = "hades_digtron:builder",
	recipe = {
			{"","hades_core:mese_crystal_fragment",""},
			{"hades_core:mese_crystal_fragment","hades_digtron:digtron_core","hades_core:mese_crystal_fragment"},
			{"","hades_core:mese_crystal_fragment",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:light",
	recipe = {
			{"","hades_torches:torch",""},
			{"","hades_digtron:digtron_core",""},
			{"","",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:digger",
	recipe = {
			{"","hades_core:diamond",""},
			{"hades_core:diamond","hades_digtron:digtron_core","hades_core:diamond"},
			{"","hades_core:diamond",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:soft_digger",
	recipe = {
			{"","hades_core:steel_ingot",""},
			{"hades_core:steel_ingot","hades_digtron:digtron_core","hades_core:steel_ingot"},
			{"","hades_core:steel_ingot",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:inventory",
	recipe = {
			{"","hades_chests:chest",""},
			{"","hades_digtron:digtron_core",""},
			{"","",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:fuelstore",
	recipe = {
			{"","hades_furnaces:furnace",""},
			{"","hades_digtron:digtron_core",""},
			{"","",""}
			}
})

if minetest.get_modpath("hades_technic") then
	-- no need for this recipe if technic is not installed, avoid cluttering crafting guides
	minetest.register_craft({
		output = "hades_digtron:battery_holder",
		recipe = {
				{"","hades_chests:chest",""},
				{"","hades_digtron:digtron_core",""},
				{"","hades_core:steel_ingot",""}
				}
	})
	
	minetest.register_craft({
		output = "hades_digtron:power_connector",
		recipe = {
				{"","hades_technic:hv_cable",""},
				{"hades_technic:hv_cable","hades_digtron:digtron_core","hades_technic:hv_cable"},
				{"","hades_technic:hv_cable",""}
				}
	})
end

minetest.register_craft({
	output = "hades_digtron:combined_storage",
	recipe = {
			{"","hades_furnaces:furnace",""},
			{"","hades_digtron:digtron_core",""},
			{"","hades_chests:chest",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:pusher",
	recipe = {
			{"","hades_core:coal_lump",""},
			{"hades_core:coal_lump","hades_digtron:digtron_core","hades_core:coal_lump"},
			{"","hades_core:coal_lump",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:axle",
	recipe = {
			{"hades_core:coal_lump","hades_core:coal_lump","hades_core:coal_lump"},
			{"hades_core:coal_lump","hades_digtron:digtron_core","hades_core:coal_lump"},
			{"hades_core:coal_lump","hades_core:coal_lump","hades_core:coal_lump"}
			}
})

minetest.register_craft({
	output = "hades_digtron:empty_crate",
	recipe = {
			{"","hades_chests:chest",""},
			{"","hades_digtron:digtron_core",""},
			{"","hades_core:mese_crystal",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:empty_locked_crate",
	type = "shapeless",
	recipe = {"hades_core:steel_ingot", "hades_digtron:empty_crate"},
})

minetest.register_craft({
	output = "hades_digtron:empty_crate",
	type = "shapeless",
	recipe = {"hades_digtron:empty_locked_crate"},
})

minetest.register_craft({
	output = "hades_digtron:duplicator",
	recipe = {
			{"hades_core:mese_crystal","hades_core:mese_crystal","hades_core:mese_crystal"},
			{"hades_chests:chest","hades_digtron:digtron_core","hades_chests:chest"},
			{"hades_core:mese_crystal","hades_core:mese_crystal","hades_core:mese_crystal"}
			}
})

minetest.register_craft({
	output = "hades_digtron:inventory_ejector",
	recipe = {
			{"hades_core:steel_ingot","hades_core:steel_ingot","hades_core:steel_ingot"},
			{"","hades_digtron:digtron_core",""},
			{"","hades_core:steel_ingot",""}
			}
})

-- Structural

minetest.register_craft({
	output = "hades_digtron:structure",
	recipe = {
			{"group:stick","","group:stick"},
			{"","hades_digtron:digtron_core",""},
			{"group:stick","","group:stick"}
			}
})

minetest.register_craft({
	output = "hades_digtron:panel",
	recipe = {
			{"","",""},
			{"","hades_digtron:digtron_core",""},
			{"","hades_core:steel_ingot",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:edge_panel",
	recipe = {
			{"","",""},
			{"","hades_digtron:digtron_core","hades_core:steel_ingot"},
			{"","hades_core:steel_ingot",""}
			}
})

minetest.register_craft({
	output = "hades_digtron:corner_panel",
	recipe = {
			{"","",""},
			{"","hades_digtron:digtron_core","hades_core:steel_ingot"},
			{"","hades_core:steel_ingot","hades_core:steel_ingot"}
			}
})

-- For swapping digger types
minetest.register_craft({
	output = "hades_digtron:digger",
	recipe = {
			{"hades_digtron:intermittent_digger"},
			}
})
minetest.register_craft({
	output = "hades_digtron:intermittent_digger",
	recipe = {
			{"hades_digtron:digger"},
			}
})
minetest.register_craft({
	output = "hades_digtron:soft_digger",
	recipe = {
			{"hades_digtron:intermittent_soft_digger"},
			}
})
minetest.register_craft({
	output = "hades_digtron:intermittent_soft_digger",
	recipe = {
			{"hades_digtron:soft_digger"},
			}
})

minetest.register_craft({
	output = "hades_digtron:dual_soft_digger",
	type = "shapeless",
	recipe = {"hades_digtron:soft_digger", "hades_digtron:soft_digger"},
})
minetest.register_craft({
	output = "hades_digtron:dual_digger",
	type = "shapeless",
	recipe = {"hades_digtron:digger", "hades_digtron:digger"},
})
minetest.register_craft({
	output = "hades_digtron:soft_digger 2",
	recipe = {
			{"hades_digtron:dual_soft_digger"},
			}
})
minetest.register_craft({
	output = "hades_digtron:digger 2",
	recipe = {
			{"hades_digtron:dual_digger"},
			}
})

-- And some recycling reactions to get digtron cores out of the "cheap" parts:

minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:structure"},
			}
})
minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:panel"},
			}
})
minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:corner_panel"},
			}
})
minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:edge_panel"},
			}
})

minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:inventory"},
			}
})

minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:fuelstore"},
			}
})

minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:combined_storage"},
			}
})

minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:light"},
			}
})

minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:pusher"},
			}
})

minetest.register_craft({
	output = "hades_digtron:digtron_core",
	recipe = {
			{"hades_digtron:axle"},
			}
})
