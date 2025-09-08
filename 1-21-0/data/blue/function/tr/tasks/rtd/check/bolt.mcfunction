tag @s remove blue.tr.RTD.bolt
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.plain_vault=1..}] blue.tr.plain_vault 2
execute unless score #.tr.bolt_completed blue.config matches 1 run function blue:tr/tasks/bolt