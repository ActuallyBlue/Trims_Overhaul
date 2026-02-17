scoreboard players add #.snout.ambient blue.misc 1
execute if score #.snout.ambient blue.misc matches 4 run particle item{item:raw_gold_block} ~ ~0.8 ~ 0.2 0.3 0.2 0.01 1 normal @a[scores={blue.particles=2..}]
execute if score #.snout.ambient blue.misc matches 7 store success score #.snout.ambient blue.misc run particle item{item:raw_gold_block} ~ ~0.8 ~ 0.2 0.3 0.2 0.01 1 normal @a[scores={blue.particles=1..}]
execute positioned ~ ~1 ~ as @e[tag=!blue.tr.snout_checked,distance=..64,type=item] run function blue:tr/effects/snout/gamble/item/main
execute unless score #.20 blue.misc matches 13 run return fail
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"items":["golden_sword","golden_axe","golden_pickaxe","golden_shovel","golden_hoe"]}}}} run effect give @s haste 2 2 true
execute if predicate {"condition":"location_check","predicate":{"structures":"bastion_remnant"}} run effect give @s fire_resistance 2 0 true
execute store success score #.temp0 blue.misc if entity @s[tag=blue.tr.mats.gold]
execute as @e[distance=..7,predicate=blue:tr/not_toddler_thief,type=piglin] run function blue:tr/effects/snout/piglin