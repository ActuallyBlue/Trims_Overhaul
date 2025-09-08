tag @s remove blue.tr.RTD.flow
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.ominous_vault=1..}] blue.tr.ominous_vault 2
execute unless score #.tr.flow_completed blue.config matches 1 run function blue:tr/tasks/flow