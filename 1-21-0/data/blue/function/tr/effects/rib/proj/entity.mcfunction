execute store result entity @s Air byte 1 run scoreboard players get #.20 blue.misc
scoreboard players add @s blue.misc 1
kill @s[scores={blue.misc=50..}]
summon area_effect_cloud ~ ~ ~ {Rotation:[0,180],Radius:0,Tags:["blue.tr.rib_skull"],Duration:25,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"}}
schedule function blue:tr/effects/rib/proj/loop 1t
particle smoke ~ ~0.25 ~ 0.05 0.05 0.05 0.025 1
particle mycelium ~ ~0.25 ~ 0.2 0.2 0.2 0 5