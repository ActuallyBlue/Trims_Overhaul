advancement revoke @s only blue:tr/tasks/host
execute if score #.tr.host_completed blue.config matches 2 unless entity @s[tag=blue.tr.host] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_host=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players add @s blue.tr.villagers_cured 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.villagers_cured"},"color":"#A34646"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.host_task","objective":"blue.config"}}," ",{"translate":"blue.tr.villagers_cured","fallback":"Villagers Cured"}]
execute if score @s blue.tr.villagers_cured >= #.tr.host_task blue.config unless score #.tr.host_completed blue.config matches 1 run function blue:tr/completion/host
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/3c] run function blue:tr/tasks/rtd/host