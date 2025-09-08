tag @s remove blue.tr.RTD.ward
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.damage_blocked=200..}] blue.tr.damage_blocked 201
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.damage_blocked 400
execute unless score #.tr.ward_completed blue.config matches 1 run function blue:tr/tasks/ward