execute if entity @s[distance=..22] on attacker if score @s blue.tr.current_trim matches 9 run scoreboard players set #.remove_Silent blue.misc -1
execute unless score #.remove_Silent blue.misc matches -1 if entity @s[distance=..22] run return 0
data modify entity @s Silent set value 0b
tag @s remove blue.tr.silence.Silent