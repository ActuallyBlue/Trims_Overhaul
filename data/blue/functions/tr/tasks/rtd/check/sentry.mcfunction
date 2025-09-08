tag @s remove blue.tr.RTD.sentry
execute if score #.temp blue.misc matches 0 run scoreboard players remove @s[scores={blue.tr.raids_won=1..}] blue.tr.raids_won 2
execute unless score #.tr.sentry_completed blue.config matches 1 run function blue:tr/tasks/sentry