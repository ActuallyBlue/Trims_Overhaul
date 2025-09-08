scoreboard players operation @s blue.tr.walk /= #100 blue.misc
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_wayfinder=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players operation @s blue.tr.blocks_walked += @s blue.tr.walk
scoreboard players operation #.temp blue.misc = #.tr.wayfinder_task blue.config
execute unless score @s blue.tr.structures matches 12.. run title @s[scores={blue.tr.combat=0..}] actionbar [{"score":{"name":"@s","objective":"blue.tr.blocks_walked"},"color":"#F1FFC8"},{"text":"/","color":"gray"},{"score":{"name":"#.temp","objective":"blue.misc"}}," ",{"translate":"blue.tr.blocks_walked","fallback":"Blocks Walked"}]
execute unless score @s blue.tr.structures matches 12.. if score @s blue.tr.blocks_walked >= #.temp blue.misc unless score #.tr.wayfinder_completed blue.config matches 1 at @s run function blue:tr/completion/wayfinder
execute unless score @s blue.tr.structures matches 12.. if score @s blue.tr.blocks_walked >= #.temp blue.misc run scoreboard players set @s blue.tr.structures 12
scoreboard players operation #.temp blue.misc += #.tr.wayfinder_task blue.config
title @s[scores={blue.tr.structures=12..21,blue.tr.combat=0..}] actionbar [{"score":{"name":"@s","objective":"blue.tr.blocks_walked"},"color":"#F1FFC8"},{"text":"/","color":"gray"},{"score":{"name":"#.temp","objective":"blue.misc"}}," ",{"translate":"blue.tr.blocks_walked","fallback":"Blocks Walked"}]
execute if score @s blue.tr.structures matches 12..21 if score @s blue.tr.blocks_walked >= #.temp blue.misc at @s run function blue:tr/completion/wayfinder
execute if score @s blue.tr.structures matches 12..21 if score @s blue.tr.blocks_walked >= #.temp blue.misc run scoreboard players set @s blue.tr.structures 22
scoreboard players operation #.temp blue.misc += #.tr.wayfinder_task blue.config
title @s[scores={blue.tr.structures=22..31,blue.tr.combat=0..}] actionbar [{"score":{"name":"@s","objective":"blue.tr.blocks_walked"},"color":"#F1FFC8"},{"text":"/","color":"gray"},{"score":{"name":"#.temp","objective":"blue.misc"}}," ",{"translate":"blue.tr.blocks_walked","fallback":"Blocks Walked"}]
execute if score @s blue.tr.structures matches 22..31 if score @s blue.tr.blocks_walked >= #.temp blue.misc at @s run function blue:tr/completion/wayfinder
execute if score @s blue.tr.structures matches 22..31 if score @s blue.tr.blocks_walked >= #.temp blue.misc run scoreboard players set @s blue.tr.structures 32
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/10c] unless score @s blue.tr.structures matches 32.. at @s run function blue:tr/tasks/rtd/wayfinder