tag @s remove blue.tr.RTD.wayfinder
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.blocks_walked=400..}] blue.tr.blocks_walked 400
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.blocks_walked 600
execute if score #.tr.wayfinder_completed blue.config matches 0 run function blue:tr/tasks/wayfinder
execute if score #.tr.wayfinder_completed blue.config matches 1.. if entity @s[tag=blue.tr.wayfinder] run function blue:tr/tasks/wayfinder