execute if score #.tr.snout_completed blue.config matches 2 unless entity @s[tag=blue.tr.snout] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_snout=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players operation @s blue.tr.piglin_trades += @s blue.tr.pre_barter
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.piglin_trades"},"color":"#F2B01A"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.snout_task","objective":"blue.config"}}," ",{"translate":"blue.tr.piglin_trades","fallback":"Piglin Trades"}]
execute if score @s blue.tr.piglin_trades >= #.tr.snout_task blue.config unless score #.tr.snout_completed blue.config matches 1 at @s run function blue:tr/completion/snout
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/5c] at @s run function blue:tr/tasks/rtd/snout