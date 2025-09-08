execute at @a[tag=blue.tr.shaper] as @e[type=!#blue:tr/peaceful,distance=0.01..9] run damage @s 10 player_explosion by @p[tag=blue.tr.shaper]
execute at @a[tag=blue.tr.shaper] run playsound entity.generic.explode player @a[distance=..20] ~ ~ ~ 2.5 0.7
execute at @a[tag=blue.tr.shaper] run particle smoke ~ ~1 ~ 1 0.8 1 0.05 80
execute at @a[tag=blue.tr.shaper] run particle explosion_emitter