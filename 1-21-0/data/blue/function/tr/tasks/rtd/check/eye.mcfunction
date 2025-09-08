tag @s remove blue.tr.RTD.eye
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.silverfish_killed=6..}] blue.tr.silverfish_killed 7
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.silverfish_killed 5
execute unless score #.tr.eye_completed blue.config matches 1 run function blue:tr/tasks/eye