tag @s remove blue.tr.RTD.raiser
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.items_enchanted=2..}] blue.tr.items_enchanted 3
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.items_enchanted 3
execute unless score #.tr.raiser_completed blue.config matches 1 run function blue:tr/tasks/raiser