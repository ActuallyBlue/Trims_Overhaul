scoreboard players reset #.can_plunge blue.misc
tp @s @s
execute positioned ^ ^ ^-0.8 positioned ~ ~1001.8 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-0.8 positioned ~ ~1001.8 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-0.8 positioned ~ ~1001.8 ~ summon end_crystal run damage @s 1
execute if score #.last_reversal_charge blue.misc matches 40.. positioned ^ ^ ^-0.8 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute if score #.last_reversal_charge blue.misc matches 40.. positioned ^ ^ ^-0.8 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute if score #.last_reversal_charge blue.misc matches 55.. positioned ^ ^ ^-0.8 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute if score #.last_reversal_charge blue.misc matches 55.. positioned ^ ^ ^-0.8 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute if score #.last_reversal_charge blue.misc matches 70.. positioned ^ ^ ^-0.8 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute if score #.last_reversal_charge blue.misc matches 70.. positioned ^ ^ ^-0.8 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute if score #.last_reversal_charge blue.misc matches 70.. positioned ^ ^ ^-0.8 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
tp @s ~ ~ ~
particle dragon_breath ~ ~ ~ 0.4 0.4 0.4 0.1 64 force
execute if score #.last_reversal_charge blue.misc matches ..39 run playsound entity.ender_dragon.growl player @a ~ ~ ~ 3 2
execute if score #.last_reversal_charge blue.misc matches 40.. run particle dragon_breath ~ ~ ~ 0.4 0.4 0.4 0.2 64 force @a[scores={blue.particles=1..}]
execute if score #.last_reversal_charge blue.misc matches 40..54 run playsound entity.ender_dragon.growl player @a ~ ~ ~ 4 1.8
execute if score #.last_reversal_charge blue.misc matches 55.. run particle dragon_breath ~ ~ ~ 0.4 0.4 0.4 0.4 128 force @a[scores={blue.particles=1..}]
execute if score #.last_reversal_charge blue.misc matches 55..69 run playsound entity.ender_dragon.growl player @a ~ ~ ~ 14 1.4
execute if score #.last_reversal_charge blue.misc matches 70.. run particle dragon_breath ~ ~ ~ 0.4 0.4 0.4 0.6 128 force
execute if score #.last_reversal_charge blue.misc matches 70.. run playsound entity.ender_dragon.growl player @a ~ ~ ~ 20 1
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
execute positioned ~ ~-0.5 ~ run particle dust 0.81 0.78 0.65 1 ^ ^ ^-0.3 0.1 0.2 0.1 0.1 128
execute unless score #.last_reversal_charge blue.misc matches 55.. run scoreboard players set #.reversal_charge blue.misc -340
execute if score #.last_reversal_charge blue.misc matches 55.. run scoreboard players set #.reversal_charge blue.misc -760