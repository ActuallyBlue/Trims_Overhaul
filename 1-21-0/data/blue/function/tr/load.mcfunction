execute in the_nether run forceload add 200600 200600
execute in the_nether run setblock 200600 2 200600 barrel
execute in overworld run forceload add 200600 200600
execute in overworld run fill 200601 0 200599 200599 3 200601 bedrock
execute in overworld run setblock 200600 1 200600 air
execute in overworld run setblock 200600 2 200600 barrel
execute in the_end run forceload add 200600 200600
execute in the_end run setblock 200600 2 200600 barrel
execute in overworld run forceload add 8 8
scoreboard objectives add blue.misc dummy
schedule function blue:tr/delayed/5tick/main 5t
schedule function blue:tr/tick 2t
kill b163102f-0-0-0-100000000
execute in overworld run summon armor_stand 200600 3 200600 {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,0,1,0],Marker:1b,NoBasePlate:1b,Small:1b,Invisible:1b}
kill b163102f-0-0-0-200000000
execute in overworld run summon marker 0.0 0 0.0 {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,0,2,0]}
function blue:tr/debug/dmg
execute if score #.restarted blue.misc matches 0.. if score #.Trims_Overhaul blue.misc matches 302 if score #.tr.reload_message blue.config matches 1 run tellraw @a [{"translate":"blue.tr.trims_overhaul","fallback":"Trims Overhaul","color":"#3aa56a"},{"translate":"blue.tr.reload.success","fallback":" has successfully reloaded","color":"dark_green"}," ",{"text":"[]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.disable_message","fallback":"Click here to disable this reload message","color":"gray"}},"hover_event":{"action":"show_text","value":{"translate":"blue.tr.disable_message","fallback":"Click here to disable this reload message","color":"gray"}},"clickEvent":{"action":"run_command","value":"/function blue:tr/settings/reload_message"},"click_event":{"action":"run_command","command":"/function blue:tr/settings/reload_message"}}]
execute unless score #.restarted blue.misc matches 0.. run tellraw @a {"translate":"blue.tr.require_restart","fallback":"Some datapacks use features that require a server restart","color":"red","hover_event":{"action":"show_text","value":[{"translate":"bluetrims_overhaul","fallback":"Trims Overhaul","color":"gray"},", ..."]},"hoverEvent":{"action":"show_text","contents":[{"translate":"blue.tr.trims_overhaul","fallback":"Trims Overhaul","color":"gray"},", ..."]}}
execute unless score #.Trims_Overhaul blue.misc matches 302 run function blue:tr/adjust
scoreboard players reset #.restarted blue.misc
function blue:tr/debug/reset_cooldowns