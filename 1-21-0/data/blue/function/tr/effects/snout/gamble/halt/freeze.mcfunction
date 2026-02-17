tp @s @s
execute unless entity @s[type=player] run return run summon area_effect_cloud ~ ~ ~ {Rotation:[0,180],Radius:0,Duration:400,Tags:["blue.tr.gamble.freeze","blue.tr.mob_freeze"],custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"}}
scoreboard players operation #.temp blue.misc = @s blue.id
summon area_effect_cloud ~ ~ ~ {Rotation:[0,180],Radius:0,Duration:400,Tags:["blue.tr.gamble.freeze","blue.tr.temp"],custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"}}
scoreboard players operation @e[tag=blue.tr.temp,distance=..1,limit=1,type=area_effect_cloud] blue.id = @s blue.id
tag @e[tag=blue.tr.temp,distance=..1,limit=1,type=area_effect_cloud] remove blue.tr.temp
scoreboard players set @s blue.tr.combat -600