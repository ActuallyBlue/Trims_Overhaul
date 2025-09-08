particle enchant ~ ~1 ~ 0.2 0.3 0.2 0.1 2
scoreboard players set #.furthest_found blue.misc 1
execute summon area_effect_cloud run data modify storage blue:data trims.player.pos.temp set from entity @s Pos
execute store result score #.farX blue.misc run data get storage blue:data trims.player.pos.temp[0]
execute store result score #.farY blue.misc run data get storage blue:data trims.player.pos.temp[1]
execute store result score #.farZ blue.misc run data get storage blue:data trims.player.pos.temp[2]
title @a[tag=blue.tr.mats.star,limit=1] actionbar [{"selector":"@a[tag=blue.tr.wayfinder.tracked,limit=1]","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"#.nearX","objective":"blue.misc"},"color":"#5A8EE8"}," ",{"score":{"name":"#.nearY","objective":"blue.misc"},"color":"#516D9E"}," ",{"score":{"name":"#.nearZ","objective":"blue.misc"},"color":"#3D5F9C"},{"text":" || ","color":"dark_gray"},{"selector":"@s","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"#.farX","objective":"blue.misc"},"color":"#5A8EE8"}," ",{"score":{"name":"#.farY","objective":"blue.misc"},"color":"#516D9E"}," ",{"score":{"name":"#.farZ","objective":"blue.misc"},"color":"#3D5F9C"}]
tag @s add blue.tr.wayfinder.tracked