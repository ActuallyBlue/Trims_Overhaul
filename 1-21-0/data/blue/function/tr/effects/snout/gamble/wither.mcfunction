execute as @e[type=!#blue:shared/no_ai,distance=..12] run damage @s 8 wither
effect give @e[type=!#blue:shared/no_ai,distance=..12] wither 20 1
effect give @e[type=!#blue:shared/no_ai,distance=..12] wither 3 3
playsound entity.wither.shoot player @a ~ ~ ~ 1.5 0.7
particle soul_fire_flame ~ ~1 ~ 2 1 2 0.1 64
particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.25 6