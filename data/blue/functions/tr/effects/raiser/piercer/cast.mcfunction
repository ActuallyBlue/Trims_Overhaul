scoreboard players add #.raiser.piercer blue.misc 1
execute unless block ~ ~ ~ #blue:trims/passable run scoreboard players add #.raiser.piercer blue.misc 5
execute if score #.raiser.piercer blue.misc <= #.raiser.charge blue.misc positioned ^ ^ ^0.125 run function blue:tr/effects/raiser/piercer/cast
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=!#blue:tr/peaceful,dx=0,tag=!blue.tr.raiser] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] run damage @s 2 blue:tr/piercer by @a[tag=blue.tr.raiser,limit=1]
particle dust_color_transition 0.4 0.85 0 0.225 0.8 1 0 ^ ^ ^0.0625 0.025 0.025 0.025 0 3 normal @a[scores={blue.particles=2..}]
particle dust_color_transition 0.4 0.85 0 0.225 0.8 1 0 ^ ^ ^ 0.025 0.025 0.025 0 3
execute if score #.temp blue.misc matches 0 if predicate blue:r/40c run xp add @a[tag=blue.tr.raiser,limit=1] -1
execute if score #.temp blue.misc matches 1 if predicate blue:r/20c run xp add @a[tag=blue.tr.raiser,limit=1] -1