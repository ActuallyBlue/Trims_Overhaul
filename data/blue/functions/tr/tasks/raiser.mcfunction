advancement revoke @s only blue:tr/tasks/raiser req
execute if score #.tr.raiser_completed blue.config matches 2 unless entity @s[tag=blue.tr.raiser] run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_raiser=false}}] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return 0
scoreboard players add @s blue.tr.items_enchanted 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.items_enchanted"},"color":"#95B623"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.raiser_task","objective":"blue.config"}}," ",{"translate":"stat.minecraft.enchant_item"}]
execute if score @s blue.tr.items_enchanted >= #.tr.raiser_task blue.config unless score #.tr.raiser_completed blue.config matches 1 run function blue:tr/completion/raiser
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/3c] run function blue:tr/tasks/rtd/raiser