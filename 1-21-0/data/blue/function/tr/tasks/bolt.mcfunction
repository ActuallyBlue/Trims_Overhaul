advancement revoke @s only blue:tr/tasks/bolt
execute if score #.tr.bolt_completed blue.config matches 2 unless entity @s[tag=blue.tr.bolt] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_bolt=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players add @s blue.tr.plain_vault 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.plain_vault"},"color":"#B65D1A"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.bolt_task","objective":"blue.config"}}," ",{"translate":"blue.tr.plain_vaults_unlocked","fallback":"Plain Vaults Unlocked"}]
execute if score @s blue.tr.plain_vault >= #.tr.bolt_task blue.config unless score #.tr.bolt_completed blue.config matches 1 run function blue:tr/completion/bolt
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/10c] run function blue:tr/tasks/rtd/bolt