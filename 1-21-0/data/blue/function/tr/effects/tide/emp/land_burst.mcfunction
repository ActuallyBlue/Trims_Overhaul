execute as @e[distance=..4.5,type=!#blue:shared/peaceful,tag=!blue.tr.tide] run damage @s 4 blue:tr/tide by @a[tag=blue.tr.tide,limit=1]
playsound item.trident.return player @a ~ ~ ~ 1.1 1.5
particle enchanted_hit ~ ~0.9 ~ 0.2 0.2 0.2 1.5 200 normal @a[scores={blue.particles=1..}]
particle splash ~ ~1 ~ 2 0.3 2 1 200 normal @a[scores={blue.particles=1..}]
particle splash ~ ~0.8 ~ 2 0.3 2 1 400
particle fishing ~ ~0.8 ~ 0 0 0 0.1 100
execute if entity @s[type=trident] run return fail
schedule function blue:tr/effects/tide/emp/weak_cooldown 20t
scoreboard players set #.tide.weak_cooldown blue.misc 1
scoreboard players remove #.tide.stacks blue.misc 1