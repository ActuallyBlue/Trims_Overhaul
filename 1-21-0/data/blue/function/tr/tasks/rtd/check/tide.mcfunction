tag @s remove blue.tr.RTD.tide
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.blocks_swam=200..}] blue.tr.damage_blocked 201
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.blocks_swam 160
execute unless score #.tr.tide_completed blue.config matches 1 run function blue:tr/tasks/tide