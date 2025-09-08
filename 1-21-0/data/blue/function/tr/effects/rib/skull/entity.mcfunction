execute store result entity @s Air int 1 run scoreboard players get #.20 blue.misc
scoreboard players add @s blue.misc 1
kill @s[scores={blue.misc=50..}]
summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["blue.tr.rib_skull"],Duration:25,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"}}
schedule function blue:tr/effects/rib/skull/loop 1t
particle soul_fire_flame ~ ~0.25 ~ 0 0 0 0.025 2
particle smoke ~ ~0.25 ~ 0.05 0.05 0.05 0.025 1