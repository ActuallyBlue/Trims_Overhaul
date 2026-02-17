execute at b163102f-0-11-0-1 run playsound entity.iron_golem.death player @a ~ ~ ~ 1.2 2
execute at b163102f-0-11-0-1 run particle damage_indicator ~ ~1 ~ 0.6 1 0.6 0.1 24
execute as b163102f-0-11-0-1 at @s run tp ~ -128 ~
data merge entity b163102f-0-11-0-1 {DeathTime:20s,Health:0f}