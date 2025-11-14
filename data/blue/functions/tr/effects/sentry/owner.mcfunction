scoreboard players set #.temp blue.misc -52
execute if predicate blue:shared/in_village run scoreboard players set #.temp blue.misc -54
execute unless score #.temp blue.misc matches -54 if entity @s[tag=blue.tr.dragon_egg] run scoreboard players set #.temp blue.misc -53