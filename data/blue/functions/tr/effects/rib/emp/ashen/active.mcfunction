effect give @s strength 1 1
particle soul_fire_flame ~ ~0.8 ~ 0.15 0.2 0.15 0 1
scoreboard players remove #.rib.ashen_active blue.misc 1
execute if score #.20 blue.misc matches 10 if entity @e[distance=..32,team=blue.tr.rib,limit=1] run team join blue.tr.rib
execute if score #.rib.ashen_active blue.misc matches 1 run function blue:tr/effects/rib/emp/ashen/end
execute if score #.rib.scorch_combat blue.config matches 1 if score @s blue.tr.combat matches -100.. run return 0
execute unless predicate blue:r/1c run return 0
playsound entity.blaze.shoot player @a ~ ~ ~ 1.5 0.75
execute as @a[distance=..8,advancements={blue:tr/trust={rib=false}},team=!blue.tr.rib] run damage @s 9 on_fire by @a[tag=blue.tr.rib,limit=1]
execute at @a[distance=..8,advancements={blue:tr/trust={rib=false}},team=!blue.tr.rib] run particle soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 12
execute as @e[type=!#blue:tr/peaceful,type=!player,distance=..8,team=!blue.tr.rib] run damage @s 9 on_fire by @a[tag=blue.tr.rib,limit=1]
execute at @e[type=!#blue:tr/peaceful,type=!player,distance=..8,team=!blue.tr.rib] run particle soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 12
particle soul_fire_flame ~ ~1 ~ 0.3 0.4 0.3 0.35 50