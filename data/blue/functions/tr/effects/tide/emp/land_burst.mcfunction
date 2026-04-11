execute unless entity @s[type=trident] as @e[distance=..4.5,type=!#blue:shared/peaceful,tag=!blue.tr.tide] run damage @s 7 blue:tr/tide by @a[tag=blue.tr.mats.heart,limit=1]
execute unless entity @s[type=trident] run playsound item.trident.return player @a ~ ~ ~ 1.1 1.6
execute if entity @s[type=trident] run summon marker ~ ~ ~ {UUID:[I;-1318907857,100,0,1]}
execute if entity @s[type=trident] as @e[distance=..4.5,type=!#blue:shared/peaceful,tag=!blue.tr.tide] run damage @s 7 blue:tr/tide by b163102f-0-64-0-1 from @a[tag=blue.tr.mats.heart,limit=1]
execute if entity @s[type=trident] run kill b163102f-0-64-0-1
particle enchanted_hit ~ ~0.9 ~ 0.2 0.2 0.2 1.5 200 normal @a[scores={blue.particles=1..}]
particle splash ~ ~1 ~ 2 0.3 2 1 200 normal @a[scores={blue.particles=1..}]
particle splash ~ ~0.8 ~ 2 0.3 2 1 200 force
particle splash ~ ~0.8 ~ 2 0.3 2 1 200
particle fishing ~ ~0.8 ~ 0 0 0 0.1 90
schedule function blue:tr/effects/tide/emp/weak_cooldown 20t
scoreboard players set #.tide.weak_cooldown blue.misc 1
scoreboard players remove #.tide.stacks blue.misc 1