scoreboard players operation @s blue.tr.swim /= #100 blue.misc
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_tide=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
schedule function blue:tr/tasks/loop 10t
scoreboard players operation @s blue.tr.blocks_swam += @s blue.tr.swim
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.blocks_swam"},"color":"#199ADD"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.tide_task","objective":"blue.config"}}," ",{"translate":"blue.tr.blocks_swam","fallback":"Blocks Swam"}]
execute if score @s blue.tr.blocks_swam >= #.tr.tide_task blue.config unless score #.tr.tide_completed blue.config matches 1 at @s run function blue:tr/completion/tide
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/03c] at @s run function blue:tr/tasks/rtd/tide