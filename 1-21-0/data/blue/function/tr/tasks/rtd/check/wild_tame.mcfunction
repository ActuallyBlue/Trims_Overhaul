tag @s remove blue.tr.RTD.wild_tame
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.animals_tamed=1..}] blue.tr.animals_tamed 2
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.animals_tamed 2
execute unless score #.tr.wayfinder_completed blue.config matches 1 run function blue:tr/tasks/wild_tame