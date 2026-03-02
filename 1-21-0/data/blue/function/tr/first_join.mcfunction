advancement grant @s only blue:tr/display/hidden/q1
advancement grant @s only blue:tr/display/hidden/q2
advancement grant @s only blue:tr/display/hidden/q3
advancement grant @s only blue:tr/display/hidden/q4
advancement grant @s only blue:tr/display/hidden/q5
advancement grant @s only blue:tr/display/trim_row
advancement grant @s only blue:tr/display/custom_row
advancement grant @s only blue:tr/display/material_row
execute if score #.tr.wayfinder_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/wayfinder
execute if score #.tr.silence_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/silence
execute if score #.tr.shaper_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/shaper
execute if score #.tr.raiser_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/raiser
execute if score #.tr.sentry_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/sentry
execute if score #.tr.spire_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/spire
execute if score #.tr.coast_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/coast
execute if score #.tr.snout_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/snout
execute if score #.tr.ward_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/ward
execute if score #.tr.dune_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/dune
execute if score #.tr.flow_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/flow
execute if score #.tr.bolt_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/bolt
execute if score #.tr.wild_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/wild
execute if score #.tr.tide_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/tide
execute if score #.tr.host_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/host
execute if score #.tr.eye_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/eye
execute if score #.tr.rib_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/rib
execute if score #.tr.vex_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/vex
execute if score #.dragon_defeated blue.misc matches 1.. run advancement grant @s only blue:tr/display/dragon_egg
execute unless score @s blue.particles matches 0.. run scoreboard players set @s blue.particles 1
scoreboard players enable @s Trims_Menu.BLUE
execute if score #.tr.first_player blue.misc matches 1.. run return fail
execute unless score #.Trims_Overhaul blue.misc = #.Trims_Overhaul blue.misc run tellraw @s [{"translate":"blue.faulty_datapack.title","fallback":"\n The world has a datapack which breaks the rest.","bold":true,"color":"dark_red"},{"translate":"blue.faulty_datapack.description","fallback":"\n In your world's %s file, located in the first %s folder, search for %s and %s, then remove the datapacks listed at the end. If you don't want, or need help, feel free to ask for help.\n Click here to join Blue's server.\n","clickEvent":{"action":"open_url","value":"https://discord.gg/TsC8AnaZeV"},"click_event":{"action":"open_url","url":"https://discord.gg/TsC8AnaZeV"},"color":"gray","bold":false,"with":[{"text":"latest.log","italic":true,"color":"white"},{"text":"\\logs","italic":true,"color":"white"},{"text":"minecraft:load","italic":true,"color":"white"},{"text":"minecraft:tick","italic":true,"color":"white"}]}]
execute if score #.Trims_Overhaul blue.misc = #.Trims_Overhaul blue.misc run scoreboard players set #.tr.first_player blue.misc 1
execute if score #.Trims_Overhaul blue.misc = #.Trims_Overhaul blue.misc run tellraw @s [{"translate":"blue.tr.first_player","fallback":" Trims Overhaul has a relatively complicated system to using abilities. To change this, go through [server settings] and change %s or %s. ","with":[{"translate":"blue.tr.objective_type","fallback":"Objective Type","color":"white"},{"translate":"blue.tr.armor_ownership","fallback":"Armor-controlled Ownership","color":"white"}],"color":"gray","clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 6"},"click_event":{"action":"run_command","command":"/trigger Trims_Menu.BLUE set 6"}},{"text":"ℹ","color":"gray","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.first_player_hover","fallback":"Due to optimization, a trim can only be used by 1 player at a time (for now).\nIf you just want to test trims in a temporary world, run %s","with":[{"text":"/function blue:tr/debug/z/toggle_test_world","italic":true,"color":"white"}],"color":"gray"}},"hover_event":{"action":"show_text","value":{"translate":"blue.tr.first_player_hover","fallback":"Due to optimization, a trim can only be used by 1 player at a time (for now).\nIf you just want to test trims in a temporary world, run %s","with":[{"text":"/function blue:tr/debug/z/toggle_test_world","italic":true,"color":"white"}],"color":"gray"}}}]
tellraw @s[name="ActuallyBlue"] {"text":"=-=-=-=-=-=-=\n-=-=-=-=-=-=-\n=-=-=-=-=-=-=","clickEvent":{"action":"run_command","value":"/function blue:tr/debug/z/toggle_all"},"click_event":{"action":"run_command","command":"/function blue:tr/debug/z/toggle_all"},"bold":true}