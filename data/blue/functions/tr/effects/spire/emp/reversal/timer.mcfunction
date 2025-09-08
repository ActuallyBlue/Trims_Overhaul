scoreboard players add #.reversal_timer blue.misc 1
execute unless score #.reversal_charge blue.misc matches 25.. unless entity @s[x_rotation=-90..-75] store success score #.reversal_timer blue.misc run scoreboard players set #.reversal_charge blue.misc 0
execute if score #.reversal_timer blue.misc matches 15..160 run particle enchant ~ ~1 ~ 0.1 0.1 0.1 3 4
execute if score #.sneaking blue.misc matches 0 if score #.reversal_timer blue.misc matches ..200 run return 0
execute if score #.reversal_charge blue.misc matches 25.. run playsound block.beacon.deactivate player @a ~ ~ ~ 2 1.5
scoreboard players set #.reversal_charge blue.misc -20
scoreboard players reset #.reversal_timer blue.misc
scoreboard players reset #.can_plunge blue.misc