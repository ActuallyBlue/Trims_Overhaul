execute summon area_effect_cloud store success score #.temp blue.misc run data modify storage blue:data trims.wayfinder.Pos set from entity @s Pos
execute if score #.temp blue.misc matches 1 run return 0
scoreboard players set #.warp_charging blue.misc 1
item replace entity b163102f-0-0-0-100000000 weapon from entity @s weapon.offhand
execute store success score #.compass blue.misc run data modify storage blue:data trims.compass set from entity b163102f-0-0-0-100000000 HandItems[0]
execute if score #.warp_charge blue.misc matches 1.. if score #.compass blue.misc matches 1 run scoreboard players reset #.warp_charging blue.misc
execute if score #.warp_charge blue.misc matches 1.. if score #.compass blue.misc matches 1 run return 0
execute unless data storage blue:data trims.compass{id:"minecraft:compass",tag:{LodestonePos:{}}} unless data storage blue:data trims.compass{id:"minecraft:recovery_compass"} run return 0
execute if data storage blue:data trims.compass.tag.smithed.ignore run title @s actionbar {"translate":"blue.tr.important_compass","fallback":"This compass appears to be important to another datapack."}
execute if data storage blue:data trims.compass.tag.smithed.ignore run return 0
scoreboard players add #.warp_charge blue.misc 1
execute if score #.warp_charge blue.misc matches 1 run function blue:tr/effects/wayfinder/emp/first
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} at b163102f-0-3-0-1 run particle nautilus ~ ~1.5 ~ 0.3 0.45 0.3 1.4 2
execute at b163102f-0-3-0-1 run particle enchant ~ ~1.3 ~ 0.2 0.15 0.2 0.6 3
particle enchant ~ ~1.2 ~ 0.2 0.15 0.2 0.6 4
execute unless score #.warp_charge blue.misc matches 100.. run return 0
execute if data storage blue:data trims.compass{id:"minecraft:compass"} if score #.warp_charge blue.misc matches 205.. run function blue:tr/effects/wayfinder/emp/teleport
execute if data storage blue:data trims.compass{id:"minecraft:compass"} at b163102f-0-3-0-1 run particle portal ~ ~1.1 ~ 0.1 0.2 0.1 0.9 3
execute if data storage blue:data trims.compass{id:"minecraft:compass"} run particle reverse_portal ~ ~1.2 ~ 0.2 0.3 0.2 0.1 2
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} if score #.warp_charge blue.misc matches 235.. run function blue:tr/effects/wayfinder/emp/teleport
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} at b163102f-0-3-0-1 run particle nautilus ~ ~1.5 ~ 0.3 0.45 0.3 1.4 2
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} run particle sculk_charge_pop ~ ~1 ~ 0.3 0.4 0.3 0.05 1
execute at b163102f-0-3-0-1 run particle enchant ~ ~1.3 ~ 0.2 0.15 0.2 0.6 7
particle enchant ~ ~1.2 ~ 0.2 0.15 0.2 0.6 7