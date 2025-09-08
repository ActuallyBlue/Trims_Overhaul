execute store success score #.temp blue.misc if entity @s[advancements={blue:tr/tasks/vex={vex=false,player=false}}]
advancement revoke @s only blue:tr/tasks/vex
execute if score #.tr.vex_completed blue.config matches 2 unless entity @s[tag=blue.tr.vex] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_vex=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
execute if score #.temp blue.misc matches 0 run scoreboard players add @s blue.tr.mobs_killed 2
scoreboard players add @s blue.tr.mobs_killed 1
title @s actionbar [{"score":{"name":"@s","objective":"blue.tr.mobs_killed"},"color":"#CFC6A5"},{"text":"/","color":"gray"},{"score":{"name":"#.tr.vex_task","objective":"blue.config"}}," ",{"translate":"blue.tr.mobs_killed","fallback":"Mobs Killed"}]
execute if score @s blue.tr.mobs_killed >= #.tr.vex_task blue.config unless score #.tr.vex_completed blue.config matches 1 run function blue:tr/completion/vex
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/5c] run function blue:tr/tasks/rtd/vex