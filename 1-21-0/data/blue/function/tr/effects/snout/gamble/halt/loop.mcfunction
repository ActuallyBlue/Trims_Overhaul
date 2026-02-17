execute if entity @e[tag=blue.tr.gamble.freeze,limit=1,type=area_effect_cloud] run schedule function blue:tr/effects/snout/gamble/halt/loop 1t
execute as @e[tag=blue.tr.gamble.freeze,tag=!blue.tr.mob_freeze,type=area_effect_cloud] at @s run function blue:tr/effects/snout/gamble/halt/aec
execute at @e[tag=blue.tr.mob_freeze,type=area_effect_cloud] as @n[type=!#blue:shared/no_ai,type=!player,tag=!smithed.strict,distance=..1] run function blue:tr/effects/snout/gamble/halt/mob
execute if score #.20 blue.misc matches 10 at @e[tag=blue.tr.snout_center,type=area_effect_cloud] run stopsound @a[distance=..48] player item.lodestone_compass.lock
execute unless score #.20 blue.misc matches 5 run return fail
execute store success score #.snout.clock_tick blue.misc unless score #.snout.clock_tick blue.misc matches 1
execute if score #.snout.clock_tick blue.misc matches 1 at @e[tag=blue.tr.snout_center,type=area_effect_cloud] run playsound item.lodestone_compass.lock player @a[distance=..32] ~ -128 ~ 0 0.75 1
execute if score #.snout.clock_tick blue.misc matches 0 at @e[tag=blue.tr.snout_center,type=area_effect_cloud] run playsound item.lodestone_compass.lock player @a[distance=..32] ~ -128 ~ 0 1.25 1
execute at @e[tag=blue.tr.snout_center,type=area_effect_cloud] run particle electric_spark ~ ~2 ~ 6 4 6 0 16
execute at @e[tag=blue.tr.gamble.freeze,type=area_effect_cloud] run particle glow ~ ~0.8 ~ 0.4 0.8 0.4 0 8