tag @s remove blue.tr.RTD.dune
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.desert_time=300..}] blue.tr.desert_time 299
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.desert_time 300
execute unless score #.tr.dune_completed blue.config matches 1 run function blue:tr/tasks/dune