advancement revoke @s only blue:tr/tasks/flow
execute if score #.tr.flow_completed blue.config matches 2 unless entity @s[tag=blue.tr.flow] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_flow=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players add @s blue.tr.ominous_vault 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.ominous_vault"},"color":"#85B2C5"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.flow_task","objective":"blue.config"}}," ",{"translate":"blue.tr.ominous_vaults_unlocked","fallback":"Ominous Vaults Unlocked"}]
execute if score @s blue.tr.ominous_vault >= #.tr.flow_task blue.config unless score #.tr.flow_completed blue.config matches 1 run function blue:tr/completion/flow
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/10c] run function blue:tr/tasks/rtd/flow