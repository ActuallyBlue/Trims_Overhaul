tag @s remove blue.tr.RTD.coast
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.items_fished=6..}] blue.tr.items_fished 7
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.items_fished 7
execute unless score #.tr.coast_completed blue.config matches 1 run function blue:tr/tasks/coast