advancement revoke @s only blue:tr/tasks/sentry
execute if score #.tr.sentry_completed blue.config matches 2 unless entity @s[tag=blue.tr.sentry] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_sentry=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players add @s blue.tr.raids_won 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.raids_won"},"color":"#4B885B"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.sentry_task","objective":"blue.config"}}," ",{"translate":"blue.tr.raids_won","fallback":"Raids Won"}]
execute if score @s blue.tr.raids_won >= #.tr.sentry_task blue.config unless score #.tr.sentry_completed blue.config matches 1 run function blue:tr/completion/sentry
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/10c] run function blue:tr/tasks/rtd/sentry