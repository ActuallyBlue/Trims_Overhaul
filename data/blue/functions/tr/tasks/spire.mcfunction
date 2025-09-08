advancement revoke @s only blue:tr/tasks/spire
execute if score #.tr.spire_completed blue.config matches 2 unless entity @s[tag=blue.tr.spire] run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_spire=false}}] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
scoreboard players add @s blue.tr.dragons_killed 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.dragons_killed"},"color":"#BE20C7"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.spire_task","objective":"blue.config"}}," ",{"translate":"blue.tr.dragons_killed","fallback":"Dragons Killed"}]
execute if score @s blue.tr.dragons_killed >= #.tr.spire_task blue.config unless score #.tr.spire_completed blue.config matches 1 run function blue:tr/completion/spire
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/40c] run function blue:tr/tasks/rtd/spire