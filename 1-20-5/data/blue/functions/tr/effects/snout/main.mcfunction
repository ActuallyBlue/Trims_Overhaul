scoreboard players add #.snout.ambient blue.misc 1
execute if score #.snout.ambient blue.misc matches 4 run particle item{item:raw_gold_block} ~ ~0.8 ~ 0.2 0.3 0.2 0.01 1 normal @a[scores={blue.particles=2..}]
execute if score #.snout.ambient blue.misc matches 7 store success score #.snout.ambient blue.misc run particle item{item:raw_gold_block} ~ ~0.8 ~ 0.2 0.3 0.2 0.01 1 normal @a[scores={blue.particles=1..}]
execute positioned ~ ~1 ~ as @e[type=item,tag=!blue.tr.snout_checked,distance=..64] run function blue:tr/effects/snout/gamble/item/main
execute unless score #.20 blue.misc matches 13 run return fail
execute if predicate blue:tr/gold_tool run effect give @s haste 2 2 true
execute if predicate blue:shared/in_bastion run effect give @s fire_resistance 2 0 true
execute store success score #.temp0 blue.misc if entity @s[tag=blue.tr.mats.gold]
execute as @e[type=piglin,distance=..7,predicate=blue:tr/not_toddler_thief] run function blue:tr/effects/snout/piglin