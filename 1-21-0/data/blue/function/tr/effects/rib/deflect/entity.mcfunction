scoreboard players add @s blue.misc 1
kill @s[scores={blue.misc=60..}]
summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["blue.tr.rib_fireball"],Duration:25,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"}}
schedule function blue:tr/effects/rib/deflect/loop 1t
particle small_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.025 5
particle flame ~ ~0.5 ~ 0.3 0.3 0.3 0.01 4