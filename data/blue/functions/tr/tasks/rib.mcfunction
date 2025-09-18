advancement revoke @s only blue:tr/tasks/rib req
execute if score #.tr.rib_completed blue.config matches 2 unless entity @s[tag=blue.tr.rib] run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_rib=false}}] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
scoreboard players add @s blue.tr.lava_seconds 1
scoreboard players add @s[predicate=blue:r/25c,predicate=!blue:shared/has_fire_res] blue.tr.lava_seconds 1
title @s[scores={blue.tr.combat=0..}] actionbar [{"score":{"name":"@s","objective":"blue.tr.lava_seconds"},"color":"#E6484B"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.rib_task","objective":"blue.config"}}," ",{"translate":"blue.tr.seconds_in_nether_lava","fallback":"Seconds in Nether Lava"}]
execute if score @s blue.tr.lava_seconds >= #.tr.rib_task blue.config unless score #.tr.rib_completed blue.config matches 1 run function blue:tr/completion/rib
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/1c] run function blue:tr/tasks/rtd/rib