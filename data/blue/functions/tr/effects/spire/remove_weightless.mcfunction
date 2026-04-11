execute if entity @s[distance=..12] on attacker if score @s blue.tr.current_trim matches 11 run scoreboard players set #.spire.remove_weightless blue.misc -1
execute unless score #.spire.remove_weightless blue.misc matches -1 if entity @s[distance=..12] run return 0
data modify entity @s NoGravity set value 0b
tag @s remove blue.tr.spire.weightless