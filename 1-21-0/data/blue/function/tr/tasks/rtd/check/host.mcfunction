tag @s remove blue.tr.RTD.host
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.villagers_cured=1..}] blue.tr.villagers_cured 2
execute unless score #.tr.host_completed blue.config matches 1 run function blue:tr/tasks/host