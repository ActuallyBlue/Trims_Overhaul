kill @s[scores={blue.misc=40..}]
scoreboard players add @s blue.misc 1
schedule function blue:tr/effects/snout/gamble/axe/loop 1t
execute if score @s blue.misc matches 2 run data modify entity @s teleport_duration set value 20
execute if score @s blue.misc matches 3 run tp @s ^ ^ ^-0.75
execute if score @s blue.misc matches 3 run data merge entity @s {teleport_duration:5,start_interpolation:0,transformation:{scale:[9,10,9],translation:[0f,5f,0f],left_rotation:[0.18f,-0.68f,-0.18f,0.68f]}}
execute if score @s blue.misc matches 3 positioned ^ ^ ^-0.25 run particle wax_on ~ ~1.5 ~ 0.3 1 0.3 1 16
execute if score @s blue.misc matches 17 run particle wax_on ~ ~4 ~ 0.8 2 0.8 2 32
execute if score @s blue.misc matches 27 run rotate @s ~ 84
execute if score @s blue.misc matches 30 run particle wax_on ^ ^7.5 ^2 0.1 0 0.1 35 128 normal @a[scores={blue.particles=2..}]
execute if score @s blue.misc matches 30 run particle wax_on ^ ^7.5 ^2 0.1 0 0.1 35 128
execute if score @s blue.misc matches 31 run particle flash{color:[0.95f,0.69f,0.1f,1]} ^ ^7.5 ^0.5
execute unless score @s blue.misc matches 32 run return fail
execute positioned ^ ^8.5 ^0.5 as @e[type=!#blue:shared/no_effects,type=!player,distance=..10] run damage @s 50 player_attack by @a[tag=blue.tr.snout,limit=1]
execute positioned ^ ^8.5 ^0.5 as @a[gamemode=!spectator,tag=!blue.tr.snout,distance=..10] run damage @s 50 player_attack by @a[tag=blue.tr.snout,limit=1]
playsound entity.lightning_bolt.impact player @a ^ ^7.5 ^0.5 2 0.8
playsound item.armor.equip_gold player @a ^ ^7.5 ^0.5 2 0.5
playsound item.armor.equip_gold player @a ^ ^7.5 ^0.5 2 0.5
particle wax_on ^ ^7.5 ^0.5 3 0.7 3 5 64 normal @a[scores={blue.particles=2..}]
particle wax_on ^ ^7.5 ^0.5 3 0.7 3 5 64
particle flash{color:[0.95f,0.69f,0.1f,1]} ^ ^7.5 ^0.5