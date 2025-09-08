tp ^ ^ ^1.2
kill @s[scores={blue.misc=5..}]
particle bubble_pop ~ ~ ~ 0.02 0.02 0.02 0 1 normal @a[scores={blue.particles=1..}]
execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#blue:tr/peaceful,tag=!blue.tr.coast,dx=0] positioned ~0.5 ~0.5 ~0.5 run function blue:tr/effects/coast/fire/proj/pufferfish_hit
execute if score #.temp blue.misc matches -99 run function blue:tr/effects/coast/fire/proj/kill
execute if block ~ ~ ~ #blue:trims/passable if block ^ ^ ^0.3 #blue:trims/passable if block ^ ^ ^0.6 #blue:trims/passable if block ^ ^ ^0.9 #blue:trims/passable run return fail
playsound item.bucket.fill player @a ~ ~ ~ 0.9 2
particle splash ^ ^ ^-0.2 0.1 0.1 0.1 0 32
kill