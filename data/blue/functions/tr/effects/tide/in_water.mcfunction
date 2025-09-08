effect give @s[predicate=!blue:tr/depth_strider] dolphins_grace 1 0 true
scoreboard players add #.tide.ambient_water blue.misc 1
scoreboard players remove #.tide.recharge blue.misc 15
execute if score #.20 blue.misc matches 10 run effect give @s water_breathing 2 0 true
execute unless score #.tide.ambient_water blue.misc matches 3.. run return 0
execute unless score #.swimming blue.misc matches 1 run particle bubble ~ ~0.7 ~ 0.22 0.35 0.22 0 1 normal @a[scores={blue.particles=1..}]
execute if score #.swimming blue.misc matches 1 run particle bubble ~ ~0.3 ~ 0.15 0.15 0.15 0 1 normal @a[scores={blue.particles=1..}]
scoreboard players reset #.tide.ambient_water blue.misc