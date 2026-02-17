scoreboard players set #.warp_charging blue.misc 1
item replace entity b163102f-0-0-0-100000000 weapon from entity @s weapon.offhand
execute store success score #.temp blue.misc run data modify storage blue:trims compass set from entity b163102f-0-0-0-100000000 HandItems[0]
execute if score #.warp_charge blue.misc matches 1.. if score #.temp blue.misc matches 1 run return run scoreboard players reset #.warp_charging blue.misc
execute unless data storage blue:trims compass{id:"minecraft:compass",components:{"minecraft:lodestone_tracker":{target:{}}}} unless data storage blue:trims compass{id:"minecraft:recovery_compass"} run return fail
execute unless score #.wayfinder.warp_type blue.config matches 1..2 if data storage blue:trims compass{id:"minecraft:compass",components:{"minecraft:lodestone_tracker":{target:{}}}} run return run title @s actionbar [{"translate":"item.minecraft.lodestone_compass"},"-",{"translate":"blue.tr.warp_name","fallback":"Warp"},{"translate":"blue.tr.is_disabled","fallback":" is disabled on this server","color":"gray"}]
execute unless score #.wayfinder.warp_type blue.config matches 1 if data storage blue:trims compass{id:"minecraft:recovery_compass"} unless score #.wayfinder.warp_type blue.config matches 3 run return run title @s actionbar [{"translate":"item.minecraft.recovery_compass"},"-",{"translate":"blue.tr.warp_name","fallback":"Warp"},{"translate":"blue.tr.is_disabled","fallback":" is disabled on this server","color":"gray"}]
execute if data storage blue:trims compass.components."minecraft:custom_data".smithed.ignore run return run title @s actionbar {"translate":"blue.tr.important_compass","fallback":"This compass appears to be important to another datapack."}
scoreboard players add #.warp_charge blue.misc 1
execute if score #.warp_charge blue.misc matches 1 run function blue:tr/effects/wayfinder/emp/warp/first
execute unless data storage blue:trims compass{id:"minecraft:compass"} at @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1] run particle nautilus ~ ~1.5 ~ 0.3 0.45 0.3 1.4 2
execute at @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1] run particle enchant ~ ~1.3 ~ 0.2 0.15 0.2 0.6 3
particle enchant ~ ~1.2 ~ 0.2 0.15 0.2 0.6 4
execute unless score #.warp_charge blue.misc matches 100.. run return fail
execute if data storage blue:trims compass{id:"minecraft:compass"} if score #.warp_charge blue.misc matches 205.. run function blue:tr/effects/wayfinder/emp/warp/teleport
execute if data storage blue:trims compass{id:"minecraft:compass"} at @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1] run particle portal ~ ~1.1 ~ 0.1 0.2 0.1 0.9 3
execute if data storage blue:trims compass{id:"minecraft:compass"} run particle reverse_portal ~ ~1.2 ~ 0.2 0.3 0.2 0.1 2
execute unless data storage blue:trims compass{id:"minecraft:compass"} if score #.warp_charge blue.misc matches 235.. run function blue:tr/effects/wayfinder/emp/warp/teleport
execute unless data storage blue:trims compass{id:"minecraft:compass"} at @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1] run particle nautilus ~ ~1.5 ~ 0.3 0.45 0.3 1.4 2
execute unless data storage blue:trims compass{id:"minecraft:compass"} run particle sculk_charge_pop ~ ~1 ~ 0.3 0.4 0.3 0.05 1
execute at @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1] run particle enchant ~ ~1.3 ~ 0.2 0.15 0.2 0.6 7
particle enchant ~ ~1.2 ~ 0.2 0.15 0.2 0.6 7