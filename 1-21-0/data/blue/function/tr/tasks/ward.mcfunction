advancement revoke @s only blue:tr/tasks/ward
execute if score #.tr.ward_completed blue.config matches 2 unless entity @s[tag=blue.tr.ward] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_ward=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players operation @s blue.tr.damage_blocked /= #10 blue.misc
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.damage_blocked"},"color":"#5C70AE"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.ward_task","objective":"blue.config"}}," ",{"translate":"blue.tr.damage_blocked","fallback":"Damage Blocked"}]
execute if score @s blue.tr.damage_blocked >= #.tr.ward_task blue.config unless score #.tr.ward_completed blue.config matches 1 run function blue:tr/completion/ward
scoreboard players operation @s blue.tr.damage_blocked *= #10 blue.misc
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/5c] run function blue:tr/tasks/rtd/ward