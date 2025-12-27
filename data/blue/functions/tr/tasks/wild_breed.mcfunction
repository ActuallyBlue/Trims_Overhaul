advancement revoke @s only blue:tr/tasks/wild_breed req
execute if score #.tr.wild_completed blue.config matches 2 unless entity @s[tag=blue.tr.wild] run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_wild=false}}] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return 0
scoreboard players add @s blue.tr.animals_bred 2
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.animals_tamed"},"color":"#00D529"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.wild_task_tame","objective":"blue.config"}}," ",{"translate":"blue.tr.animals_tamed","fallback":"Animals Tamed"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"blue.tr.animals_bred"}},{"text":"/","color":"gray"},{"score":{"name":"#.tr.wild_task_breed","objective":"blue.config"}}," ",{"translate":"stat.minecraft.animals_bred"}]
execute if score @s blue.tr.animals_bred >= #.tr.wild_task_breed blue.config if score @s blue.tr.animals_tamed >= #.tr.wild_task_tame blue.config unless score #.tr.wild_completed blue.config matches 1 run function blue:tr/completion/wild
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/3c] run function blue:tr/tasks/rtd/wild_breed