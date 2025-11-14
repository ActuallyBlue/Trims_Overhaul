execute if data storage blue:data trims.temp.warp{dimension:"minecraft:overworld"} in overworld run tp ~ ~ ~
execute if data storage blue:data trims.temp.warp{dimension:"minecraft:the_end"} in the_end run tp ~ ~ ~
execute if data storage blue:data trims.temp.warp{dimension:"minecraft:the_nether"} in the_nether run tp ~ ~ ~
data modify entity @s Pos set from storage blue:data trims.temp.warp.Pos
execute at @s align xyz run tp ~0.5 ~1 ~0.5
execute at @s run forceload add ~ ~