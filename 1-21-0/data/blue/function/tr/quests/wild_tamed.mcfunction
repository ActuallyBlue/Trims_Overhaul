scoreboard players reset #.temp blue.misc
execute on owner if entity @s[distance=..0.01] run scoreboard players set #.temp blue.misc -3211
execute if score #.temp blue.misc matches -3211 run tag @s add blue.tr.tamed