execute if score #.tr.snout_completed blue.config matches 0 as @a[scores={blue.tr.pre_barter=1..}] run function blue:tr/tasks/snout
execute if score #.tr.snout_completed blue.config matches 2 as @a[tag=blue.tr.snout,scores={blue.tr.pre_barter=1..},limit=1] run function blue:tr/tasks/snout
scoreboard players reset @a blue.tr.pre_barter