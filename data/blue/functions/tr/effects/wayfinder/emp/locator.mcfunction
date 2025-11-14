tag @s add blue.tr.wayfinder.tracked
execute summon area_effect_cloud run data modify storage blue:data trims.locator.Pos set from entity @s Pos
execute store result score #.nearX blue.misc run data get storage blue:data trims.locator.Pos[0]
execute store result score #.nearY blue.misc run data get storage blue:data trims.locator.Pos[1]
execute store result score #.nearZ blue.misc run data get storage blue:data trims.locator.Pos[2]
execute if score #.wayfinder.tracker_range blue.config matches 2.. if score #.level blue.tr.structures matches 32.. as @p[distance=0.01..,tag=!blue.tr.wayfinder,gamemode=!spectator] at @s unless entity @a[tag=blue.tr.wayfinder,distance=..4,limit=1] run function blue:tr/effects/wayfinder/emp/far_locator
execute if score #.wayfinder.tracker_range blue.config matches 1 if score #.level blue.tr.structures matches 32.. as @p[distance=0.01..240,tag=!blue.tr.wayfinder,gamemode=!spectator] at @s unless entity @a[tag=blue.tr.wayfinder,distance=..4,limit=1] run function blue:tr/effects/wayfinder/emp/far_locator
execute unless score #.furthest_found blue.misc matches 1 run title @a[tag=blue.tr.wayfinder,limit=1] actionbar [{"selector":"@s","color":"gray"},{"text":": ","color":"dark_gray"},{"score":{"name":"#.nearX","objective":"blue.misc"},"color":"#5A8EE8"}," ",{"score":{"name":"#.nearY","objective":"blue.misc"},"color":"#516D9E"}," ",{"score":{"name":"#.nearZ","objective":"blue.misc"},"color":"#3D5F9C"}]
scoreboard players reset #.furthest_found blue.misc
particle enchant ~ ~1 ~ 0.2 0.3 0.2 0.1 2