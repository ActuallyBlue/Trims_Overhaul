tag @s remove blue.tr.RTD.shaper
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.explosions_survived=2..}] blue.tr.explosions_survived 3
execute if score #.temp blue.misc matches 1 run scoreboard players add @s blue.tr.explosions_survived 3
execute unless score #.tr.shaper_completed blue.config matches 1 run function blue:tr/tasks/shaper