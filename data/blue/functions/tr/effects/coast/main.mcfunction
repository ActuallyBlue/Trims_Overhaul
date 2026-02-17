scoreboard players add #.coast.ambient blue.misc 1
execute if score #.coast.ambient blue.misc matches 4.. store success score #.coast.ambient blue.misc run particle ash ~ ~0.9 ~ 0.2 0.4 0.2 0 1 normal @a[scores={blue.particles=1..}]
execute summon area_effect_cloud store success score #.temp blue.misc run data modify storage blue:trims coast.Pos set from entity @s Pos
execute if score #.coast.ambient blue.misc matches 2 if score #.temp blue.misc matches 1 run particle white_ash ~ ~0.9 ~ 0.2 0.4 0.2 0 1 normal @a[scores={blue.particles=2..}]
execute unless predicate blue:shared/is_sneaking as @e[tag=!blue.tr.checked,distance=..4,type=item] run function blue:tr/effects/coast/fire/drop
execute if score #.coast.double_shot blue.misc matches 1.. run function blue:tr/effects/coast/fire/double_shot
execute as @e[tag=blue.tr.coast_projectile,type=item_display] at @s run function blue:tr/effects/coast/fire/proj/main
execute unless score #.20 blue.misc matches 6 if predicate blue:shared/in_shipwreck run effect give @s luck 2 1 true
execute if entity @s[tag=blue.tr.coast_propel] as @e[tag=!blue.tr.propel_check,tag=!blue.tr.coast_checked,distance=..4,type=trident] at @s run function blue:tr/effects/coast/propel