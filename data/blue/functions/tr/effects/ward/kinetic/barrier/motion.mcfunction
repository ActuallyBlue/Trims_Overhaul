tp @s @s
scoreboard players reset #.temp0 blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp0 blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp0 blue.misc -2
gamemode creative
tp @s ~ ~1000 ~
execute positioned ^ ^1.25 ^3.5 positioned ~ ~1000.5 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 801.. positioned ^ ^1.25 ^4.5 positioned ~ ~1000.5 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 1201.. positioned ^ ^1.25 ^5.5 positioned ~ ~1000.5 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 1601.. positioned ^ ^1.25 ^6.5 positioned ~ ~1000.5 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 2000.. positioned ^ ^1.25 ^7.5 positioned ~ ~1000.5 ~ summon end_crystal run damage @s 1
tp @s ~ ~ ~
execute if score #.temp0 blue.misc matches -1 run gamemode survival
execute if score #.temp0 blue.misc matches -2 run gamemode adventure