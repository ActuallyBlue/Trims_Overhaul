advancement revoke @s only blue:tr/tasks/eye
execute if score #.tr.eye_completed blue.config matches 2 unless entity @s[tag=blue.tr.eye] run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_eye=false}}] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
scoreboard players add @s blue.tr.silverfish_killed 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.silverfish_killed"},"color":"#1F8A46"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.eye_task","objective":"blue.config"}}," ",{"translate":"blue.tr.silverfish_killed","fallback":"Silverfish Killed"}]
execute if score @s blue.tr.silverfish_killed >= #.tr.eye_task blue.config unless score #.tr.eye_completed blue.config matches 1 run function blue:tr/completion/eye
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/5c] run function blue:tr/tasks/rtd/eye