execute unless score #.temp0 blue.misc matches -7412 run tp @s ~ ~1000 ~
execute if score #.temp0 blue.misc matches -7412 run tp @s ~ ~998 ~
scoreboard players reset #.temp blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
execute positioned ~ ~1000.1 ~ summon end_crystal run damage @s 1
execute positioned ~ ~1000.1 ~ summon end_crystal run damage @s 1
execute if score #.reversal_charge blue.misc matches 40.. positioned ~ ~1000 ~ summon end_crystal run damage @s 1
execute if score #.reversal_charge blue.misc matches 55.. positioned ~ ~1000 ~ summon end_crystal run damage @s 1
execute if score #.reversal_charge blue.misc matches 70.. positioned ~ ~1000 ~ summon end_crystal run damage @s 1
execute if score #.temp0 blue.misc matches -7412 run function blue:tr/effects/spire/emp/reversal/plummet
execute positioned ~ ~-0.5 ~ run particle dust 0.81 0.78 0.65 1 ^ ^ ^-0.3 0.1 0.2 0.1 0.03 64
tp @s ~ ~ ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure