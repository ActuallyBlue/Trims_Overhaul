scoreboard players add #.coast.ambient blue.misc 1
execute if score #.coast.ambient blue.misc matches 2 run particle white_ash ~ ~0.9 ~ 0.2 0.4 0.2 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.coast.ambient blue.misc matches 4.. store success score #.coast.ambient blue.misc run particle ash ~ ~0.9 ~ 0.2 0.4 0.2 0 1 normal @a[scores={blue.particles=1..}]
execute store success score #.temp blue.misc if predicate blue:tr/moving
execute unless predicate blue:shared/is_sneaking as @e[type=item,tag=!blue.tr.checked,distance=..4] run function blue:tr/effects/coast/fire/drop
execute as @e[type=item_display,tag=blue.tr.coast_projectile] at @s run function blue:tr/effects/coast/fire/proj/main
execute unless score #.20 blue.misc matches 6 if predicate blue:shared/in_shipwreck run effect give @s luck 2 1 true