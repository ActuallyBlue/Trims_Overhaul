tp ^ ^ ^1.2
kill @s[scores={blue.misc=9..}]
particle dolphin ~ ~ ~ 0.02 0.02 0.02 0 1 normal @a[scores={blue.particles=1..}]
particle dolphin ^ ^ ^0.65 0.02 0.02 0.02 0 1 normal @a[scores={blue.particles=2..}]
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#blue:tr/peaceful,tag=!blue.tr.coast,dx=0,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function blue:tr/effects/coast/fire/proj/salmon_hit
execute if score #.temp blue.misc matches -99 run scoreboard players add @s blue.misc 2
execute if score #.temp blue.misc matches -99 run scoreboard players reset #.temp blue.misc
execute if block ~ ~ ~ #blue:trims/passable if block ^ ^ ^0.3 #blue:trims/passable if block ^ ^ ^0.6 #blue:trims/passable if block ^ ^ ^0.9 #blue:trims/passable run return 0
playsound item.bucket.fill player @a ~ ~ ~ 0.9 2
particle splash ^ ^ ^-0.2 0.1 0.1 0.1 0 32
kill