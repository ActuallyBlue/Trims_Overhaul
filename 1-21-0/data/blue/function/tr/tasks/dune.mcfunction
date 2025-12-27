advancement revoke @s only blue:tr/tasks/dune req
execute if score #.tr.dune_completed blue.config matches 2 unless entity @s[tag=blue.tr.dune] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_dune=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
execute store result score #.temp blue.misc run scoreboard players add @s blue.tr.desert_time 1
scoreboard players operation #.temp blue.misc /= #60 blue.misc
title @s[scores={blue.tr.combat=100..}] actionbar [{"score":{"name":"#.temp","objective":"blue.misc"},"color":"#E7C547"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.dune_task","objective":"blue.config"}}," ",{"translate":"blue.tr.minutes_in_deserts","fallback":"Minutes in Deserts"}]
execute if score #.temp blue.misc >= #.tr.dune_task blue.config unless score #.tr.dune_completed blue.config matches 1 run function blue:tr/completion/dune
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/03c,scores={blue.tr.combat=0..}] run function blue:tr/tasks/rtd/dune