data modify entity @s Pos set from storage blue:trims temp.warp.Pos
execute if data storage blue:trims compass{id:"minecraft:compass"} at @s align xyz run tp ~0.5 ~1 ~0.5
execute unless data storage blue:trims compass{id:"minecraft:compass"} at @s align xyz run tp ~0.5 ~ ~0.5
execute at @s run forceload add ~ ~
tag @s add blue.tr.wayfinder_warp