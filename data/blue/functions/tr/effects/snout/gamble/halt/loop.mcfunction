execute if entity @e[type=area_effect_cloud,tag=blue.tr.gamble.freeze,limit=1] run schedule function blue:tr/effects/snout/gamble/halt/loop 1t
execute as @e[type=area_effect_cloud,tag=blue.tr.gamble.freeze,tag=!blue.tr.mob_freeze] at @s run function blue:tr/effects/snout/gamble/halt/aec
execute at @e[type=area_effect_cloud,tag=blue.tr.mob_freeze] as @e[type=!#blue:shared/no_ai,type=!player,tag=!smithed.strict,distance=..1,sort=nearest,limit=1] run function blue:tr/effects/snout/gamble/halt/mob
execute if score #.20 blue.misc matches 10 at @e[type=area_effect_cloud,tag=blue.tr.snout_center] run stopsound @a[distance=..48] player item.lodestone_compass.lock
execute unless score #.20 blue.misc matches 5 run return 0
execute store success score #.snout.clock_tick blue.misc unless score #.snout.clock_tick blue.misc matches 1
execute if score #.snout.clock_tick blue.misc matches 1 at @e[type=area_effect_cloud,tag=blue.tr.snout_center] run playsound item.lodestone_compass.lock player @a[distance=..32] ~ -128 ~ 0 0.75 1
execute if score #.snout.clock_tick blue.misc matches 0 at @e[type=area_effect_cloud,tag=blue.tr.snout_center] run playsound item.lodestone_compass.lock player @a[distance=..32] ~ -128 ~ 0 1.25 1
execute at @e[type=area_effect_cloud,tag=blue.tr.snout_center] run particle electric_spark ~ ~2 ~ 6 4 6 0 16
execute at @e[type=area_effect_cloud,tag=blue.tr.gamble.freeze] run particle glow ~ ~0.8 ~ 0.4 0.8 0.4 0 8