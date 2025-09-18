advancement revoke @s only blue:tr/tasks/coast req
execute if score #.tr.coast_completed blue.config matches 2 unless entity @s[tag=blue.tr.coast] run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_coast=false}}] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
scoreboard players add @s blue.tr.items_fished 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.items_fished"},"color":"#C1C888"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.coast_task","objective":"blue.config"}}," ",{"translate":"blue.tr.items_fished","fallback":"Items Fished"}]
execute if score @s blue.tr.items_fished >= #.tr.coast_task blue.config unless score #.tr.coast_completed blue.config matches 1 run function blue:tr/completion/coast
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/5c] run function blue:tr/tasks/rtd/coast