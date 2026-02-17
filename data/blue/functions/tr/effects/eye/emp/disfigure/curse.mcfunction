scoreboard players set #.eye.disfigure_time blue.misc 20
execute unless predicate blue:tr/cursed run return 0
scoreboard players set @s blue.tr.used_pearl -123
execute at @s as @e[type=ender_pearl,distance=..64,sort=nearest] run function blue:tr/effects/eye/emp/disfigure/cursed_pearl
scoreboard players reset @s blue.tr.used_pearl
scoreboard players reset #.temp blue.misc