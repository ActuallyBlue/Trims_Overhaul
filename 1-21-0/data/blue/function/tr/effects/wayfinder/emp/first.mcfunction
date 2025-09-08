execute at b163102f-0-3-0-1 run forceload remove ~ ~
execute at b163102f-0-3-0-1 run forceload add 8 8
kill b163102f-0-3-0-1
summon marker ~ ~ ~ {UUID:[I;-1318907857,3,0,1]}
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} run data modify storage blue:data trims.temp.warp set from entity @s LastDeathLocation
execute if data storage blue:data trims.compass{id:"minecraft:compass"} run data modify storage blue:data trims.temp.warp set from storage blue:data trims.compass.components."minecraft:lodestone_tracker".target
data modify storage blue:data trims.temp.warp.Pos set value [0.0d,0.0d,0.0d]
execute store result storage blue:data trims.temp.warp.Pos[0] double 1 run data get storage blue:data trims.temp.warp.pos[0]
execute store result storage blue:data trims.temp.warp.Pos[1] double 1 run data get storage blue:data trims.temp.warp.pos[1]
execute store result storage blue:data trims.temp.warp.Pos[2] double 1 run data get storage blue:data trims.temp.warp.pos[2]
execute if data storage blue:data trims.temp.warp{dimension:"minecraft:overworld"} in overworld run tp b163102f-0-3-0-1 ~ ~ ~
execute if data storage blue:data trims.temp.warp{dimension:"minecraft:the_end"} in the_end run tp b163102f-0-3-0-1 ~ ~ ~
execute if data storage blue:data trims.temp.warp{dimension:"minecraft:the_nether"} in the_nether run tp b163102f-0-3-0-1 ~ ~ ~
data modify entity b163102f-0-3-0-1 Pos set from storage blue:data trims.temp.warp.Pos
execute at b163102f-0-3-0-1 run forceload add ~ ~
execute if data storage blue:data trims.compass{id:"minecraft:compass"} as b163102f-0-3-0-1 at @s align xyz run tp ~0.5 ~1 ~0.5
execute if data storage blue:data trims.compass{id:"minecraft:compass"} run playsound block.portal.travel player @a ~ ~ ~ 0.4 0.78
execute if data storage blue:data trims.compass{id:"minecraft:compass"} run effect give @s darkness 12 100 true
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} run playsound block.portal.travel player @a ~ ~ ~ 0.4 0.68
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} run playsound block.sculk_shrieker.shriek player @a ~ ~ ~ 0.4 0.5
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} run effect give @s darkness 14 100 true