tag @s remove blue.tr.RTD.snout
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.piglin_trades=3..}] blue.tr.piglin_trades 4
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.piglin_trades 4
execute unless score #.tr.snout_completed blue.config matches 1 run function blue:tr/tasks/snout