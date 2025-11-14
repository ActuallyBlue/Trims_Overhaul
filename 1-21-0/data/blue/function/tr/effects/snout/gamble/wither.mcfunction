effect give @e[type=!#blue:shared/no_effects,distance=..12] wither 20 1
effect give @a[distance=..12,gamemode=!spectator] wither 20 1
effect give @e[type=!#blue:shared/no_effects,distance=..12] wither 3 2
effect give @a[distance=..12,gamemode=!spectator] wither 3 2
playsound entity.wither.shoot player @a ~ ~ ~ 1.5 0.7
particle soul_fire_flame ~ ~1 ~ 2 1 2 0.1 64
particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.25 64