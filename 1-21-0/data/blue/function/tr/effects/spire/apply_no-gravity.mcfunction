execute on attacker if score @s blue.tr.current_trim matches 11 run return fail
scoreboard players set #.remove_NoGravity blue.misc 1
data modify entity @s NoGravity set value 1b
particle end_rod ~ ~1 ~ 0.2 0.4 0.2 0.04 7
tag @s add blue.tr.spire.NoGravity