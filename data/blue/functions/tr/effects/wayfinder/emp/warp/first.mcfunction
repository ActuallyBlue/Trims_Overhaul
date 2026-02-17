execute at @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1] run forceload remove ~ ~
kill @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1]
execute unless data storage blue:trims compass{id:"minecraft:compass"} run data modify storage blue:trims temp.warp set from entity @s LastDeathLocation
execute if data storage blue:trims compass{id:"minecraft:compass"} run data modify storage blue:trims temp.warp set from storage blue:trims compass.tag
data modify storage blue:trims temp.warp.Pos set value [0.0d,0.0d,0.0d]
execute unless data storage blue:trims compass{id:"minecraft:compass"} store result storage blue:trims temp.warp.Pos[0] double 1 run data get storage blue:trims temp.warp.pos[0]
execute unless data storage blue:trims compass{id:"minecraft:compass"} store result storage blue:trims temp.warp.Pos[1] double 1 run data get storage blue:trims temp.warp.pos[1]
execute unless data storage blue:trims compass{id:"minecraft:compass"} store result storage blue:trims temp.warp.Pos[2] double 1 run data get storage blue:trims temp.warp.pos[2]
execute unless data storage blue:trims compass{id:"minecraft:compass"} run data modify storage blue:trims temp.warp.LodestoneDimension set from storage blue:trims temp.warp.dimension
execute if data storage blue:trims compass{id:"minecraft:compass"} store result storage blue:trims temp.warp.Pos[0] double 1 run data get storage blue:trims temp.warp.LodestonePos.X
execute if data storage blue:trims compass{id:"minecraft:compass"} store result storage blue:trims temp.warp.Pos[1] double 1 run data get storage blue:trims temp.warp.LodestonePos.Y
execute if data storage blue:trims compass{id:"minecraft:compass"} store result storage blue:trims temp.warp.Pos[2] double 1 run data get storage blue:trims temp.warp.LodestonePos.Z
execute if data storage blue:trims temp.warp{LodestoneDimension:"minecraft:overworld"} in overworld summon marker run function blue:tr/effects/wayfinder/emp/warp/marker
execute if data storage blue:trims temp.warp{LodestoneDimension:"minecraft:the_end"} in the_end summon marker run function blue:tr/effects/wayfinder/emp/warp/marker
execute if data storage blue:trims temp.warp{LodestoneDimension:"minecraft:the_nether"} in the_nether summon marker run function blue:tr/effects/wayfinder/emp/warp/marker
execute if data storage blue:trims compass{id:"minecraft:compass"} run playsound block.portal.travel player @a ~ ~ ~ 0.4 0.78
execute if data storage blue:trims compass{id:"minecraft:compass"} run effect give @s darkness 12 100 true
execute unless data storage blue:trims compass{id:"minecraft:compass"} run playsound block.portal.travel player @a ~ ~ ~ 0.4 0.68
execute unless data storage blue:trims compass{id:"minecraft:compass"} run playsound block.sculk_shrieker.shriek player @a ~ ~ ~ 0.4 0.5
execute unless data storage blue:trims compass{id:"minecraft:compass"} run effect give @s darkness 14 100 true