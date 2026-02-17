execute as @e[distance=..6.5,type=!#blue:shared/peaceful,tag=!blue.tr.tide] run damage @s 12.25 blue:tr/tide by @a[tag=blue.tr.mats.heart,limit=1]
playsound item.trident.return player @a ~ ~ ~ 1.2 1
particle dust_color_transition 0 0.5 0.8 1.1 0 0 1 ~ ~0.7 ~ 3 0.3 3 1 200 normal @a[scores={blue.particles=2..}]
particle dust_color_transition 0 0.5 0.8 1.1 0 0 1 ~ ~0.7 ~ 3 0.3 3 1 300 normal @a[scores={blue.particles=1..}]
particle dust_color_transition 0 0.5 0.8 1.1 0 0 1 ~ ~0.7 ~ 3 0.3 3 1 200 force
particle fishing ~ ~0.8 ~ 0 0 0 0.125 150
particle enchanted_hit ~ ~0.9 ~ 0.2 0.2 0.2 2 300 normal @a[scores={blue.particles=1..}]
scoreboard players set #.tide.cancel blue.misc 1
schedule function blue:tr/effects/tide/emp/weak_cooldown 20t
scoreboard players set #.tide.weak_cooldown blue.misc 1
scoreboard players remove #.tide.stacks blue.misc 1