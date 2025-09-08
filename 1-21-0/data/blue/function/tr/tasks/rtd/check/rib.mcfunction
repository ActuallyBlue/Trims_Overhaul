tag @s remove blue.tr.RTD.rib
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.lava_seconds=50..}] blue.tr.lava_seconds 50
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.lava_seconds 50
execute unless score #.tr.rib_completed blue.config matches 1 run function blue:tr/tasks/rib