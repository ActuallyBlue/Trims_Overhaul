tag @s remove blue.tr.RTD.vex
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.mobs_killed=7..}] blue.tr.mobs_killed 8
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.mobs_killed 6
execute unless score #.tr.vex_completed blue.config matches 1 run function blue:tr/tasks/vex