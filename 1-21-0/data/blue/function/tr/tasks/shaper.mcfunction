advancement revoke @s only blue:tr/tasks/shaper
execute if score #.tr.shaper_completed blue.config matches 2 unless entity @s[tag=blue.tr.shaper] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_shaper=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players add @s blue.tr.explosions_survived 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.explosions_survived"},"color":"#8F8F8F"},{"text":"/","color":"dark_gray"},{"score":{"name":"#.tr.shaper_task","objective":"blue.config"}}," ",{"translate":"blue.tr.explosions_survived","fallback":"Explosions Survived"}]
execute if score @s blue.tr.explosions_survived >= #.tr.shaper_task blue.config unless score #.tr.shaper_completed blue.config matches 1 run function blue:tr/completion/shaper
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/5c] run function blue:tr/tasks/rtd/shaper