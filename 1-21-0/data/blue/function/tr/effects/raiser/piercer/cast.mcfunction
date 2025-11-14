scoreboard players add #.raiser.piercer blue.misc 1
execute unless block ~ ~ ~ #blue:shared/passable run scoreboard players add #.raiser.piercer blue.misc 5
execute if score #.raiser.piercer blue.misc <= #.raiser.charge blue.misc positioned ^ ^ ^0.125 run function blue:tr/effects/raiser/piercer/cast
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=!#blue:shared/peaceful,dx=0,tag=!blue.tr.raiser] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0] run damage @s 2 blue:tr/piercer by @a[tag=blue.tr.raiser,limit=1]
particle dust_color_transition{from_color:[0.4f,0.85f,0f],to_color:[0.8f,1f,0f],scale:0.225f} ^ ^ ^0.0625 0.025 0.025 0.025 0 3 normal @a[scores={blue.particles=2..}]
particle dust_color_transition{from_color:[0.4f,0.85f,0f],to_color:[0.8f,1f,0f],scale:0.225f} ^ ^ ^ 0.025 0.025 0.025 0 3
execute if score #.temp blue.misc matches 0 if predicate blue:r/40c run xp add @a[tag=blue.tr.raiser,limit=1] -1
execute if score #.temp blue.misc matches 1 if predicate blue:r/20c run xp add @a[tag=blue.tr.raiser,limit=1] -1