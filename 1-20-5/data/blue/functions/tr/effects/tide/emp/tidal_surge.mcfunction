tp @s @s
execute align y run tp ~ ~-20 ~
effect give @s slow_falling 1 0 true
effect give @s dolphins_grace 3 0 true
execute positioned ~ ~-20 ~ as @e[distance=..9,type=!#blue:shared/peaceful,tag=!blue.tr.mats.heart] run damage @s 34 blue:tr/tide by @a[tag=blue.tr.mats.heart,limit=1]
particle dust_color_transition{from_color:[0f,0.1f,1f],scale:1.3,to_color:[0f,0.9f,1f]} ~ ~-19.6 ~ 4 0.4 4 0 400 force @s
particle dust_color_transition{from_color:[0f,0.1f,1f],scale:1.4,to_color:[0f,0.9f,1f]} ~ ~-19.6 ~ 4 0.4 4 0 300 force
particle dust_color_transition{from_color:[0f,0.1f,1f],scale:1.3,to_color:[0f,0.9f,1f]} ~ ~-19.6 ~ 4 0.4 4 0 800 normal @a[scores={blue.particles=1..}]
particle dust_color_transition{from_color:[0f,0.1f,1f],scale:1.7,to_color:[0f,0.9f,1f]} ~ ~-19.6 ~ 4 0.4 4 0 300 normal @a[scores={blue.particles=2..}]
particle fishing ~ ~-19.4 ~ 0 0 0 0.15 100 normal @a[scores={blue.particles=2..}]
particle fishing ~ ~-19.4 ~ 0 0 0 0.15 100
playsound item.trident.thunder master @a[distance=..16] 0 -128 0 0 0.9 1
playsound item.trident.thunder master @a ~ ~-19 ~ 2 0.9
playsound item.trident.return master @a[x=0] ~ ~-19 ~ 3 0.5
playsound item.trident.return player @s ~ -128 ~ 0 0.5 1
playsound item.trident.thunder master @s ~ -128 ~ 0 0.9 1
particle enchanted_hit ~ ~-19 ~ 0.3 0.3 0.3 2.5 250 force @a[scores={blue.particles=1..}]
schedule function blue:tr/effects/tide/emp/surge_cooldown 20s
schedule function blue:tr/effects/tide/emp/weak_cooldown 40t
scoreboard players set #.tide.surge_cooldown blue.misc 1
scoreboard players set #.tide.weak_cooldown blue.misc 1
scoreboard players remove #.tide.stacks blue.misc 1
scoreboard players set #.tide.cancel blue.misc 1
particle rain ~ ~-10 ~ 0.25 12 0.25 0 250 normal @a[scores={blue.particles=1..}]
particle rain ~ ~-10 ~ 0.25 12 0.25 0 250 force