execute store result score #.temp blue.misc run random value 1..4
execute if entity @s[gamemode=survival] run scoreboard players set #.temp0 blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp0 blue.misc -2
gamemode creative
tp @s ~ ~1000 ~
execute if score #.temp blue.misc matches 1 positioned ~1 ~1001 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 2 positioned ~ ~1001 ~1 summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 3 positioned ~ ~1001 ~-1 summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 4 positioned ~-1 ~1001 ~ summon end_crystal run damage @s 1
tp @s ~ ~ ~
execute if score #.temp0 blue.misc matches -1 run gamemode survival
execute if score #.temp0 blue.misc matches -2 run gamemode adventure