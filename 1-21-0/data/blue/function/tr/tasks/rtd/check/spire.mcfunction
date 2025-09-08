tag @s remove blue.tr.RTD.spire
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.dragons_killed=1..}] blue.tr.dragons_killed 2
execute unless score #.tr.spire_completed blue.config matches 1 run function blue:tr/tasks/spire