particle electric_spark ~ ~1 ~ 0.25 0.35 0.25 0.1 1
execute store result score #.temp blue.misc run random value 1..8
execute unless score #.temp blue.misc matches 8 run return fail
execute as @a[distance=..1.4,tag=!blue.tr.bolt,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/bolt/zap
playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 2
particle electric_spark ~ ~1 ~ 0.3 0.4 0.3 0.8 8
particle wax_off ~ ~1 ~ 0.3 0.4 0.3 0 1