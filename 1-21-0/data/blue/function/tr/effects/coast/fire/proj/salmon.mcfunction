tp ^ ^ ^1.5
kill @s[scores={blue.misc=10..}]
particle dolphin ~ ~ ~ 0.02 0.02 0.02 0 1 normal @a[scores={blue.particles=1..}]
particle dolphin ^ ^ ^0.65 0.02 0.02 0.02 0 1 normal @a[scores={blue.particles=2..}]
execute store success score #.temp blue.misc if entity @s[tag=blue.tr.coast_pierced]
execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#blue:shared/peaceful,tag=!blue.tr.coast,dx=0] positioned ~0.5 ~0.5 ~0.5 run function blue:tr/effects/coast/fire/proj/salmon_hit
execute if score #.temp blue.misc matches -99 run tag @s add blue.tr.coast_pierced
execute if block ~ ~ ~ #blue:shared/passable if block ^ ^ ^0.3 #blue:shared/passable if block ^ ^ ^0.6 #blue:shared/passable if block ^ ^ ^0.9 #blue:shared/passable if block ^ ^ ^1.2 #blue:shared/passable run return fail
playsound item.bucket.fill player @a ~ ~ ~ 0.9 2
particle splash ^ ^ ^-0.2 0.1 0.1 0.1 0 32
kill