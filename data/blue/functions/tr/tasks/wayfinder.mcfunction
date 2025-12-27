scoreboard players operation @s blue.tr.walk /= #100 blue.misc
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_wayfinder=false}}] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[tag=!blue.tr.wayfinder,advancements={blue:tr/tags={trim_limit=true}}] run return 0
scoreboard players operation @s blue.tr.blocks_walked += @s blue.tr.walk
scoreboard players operation #.temp blue.misc = #.tr.wayfinder_task blue.config
scoreboard players operation #.temp0 blue.misc = @s blue.tr.structures
execute unless score #.temp0 blue.misc matches 12.. run title @s[scores={blue.tr.combat=0..}] actionbar [{"score":{"name":"@s","objective":"blue.tr.blocks_walked"},"color":"#F1FFC8"},{"text":"/","color":"gray"},{"score":{"name":"#.temp","objective":"blue.misc"}}," ",{"translate":"blue.tr.blocks_walked","fallback":"Blocks Walked"}]
execute unless score #.temp0 blue.misc matches 12.. if score @s blue.tr.blocks_walked >= #.temp blue.misc run scoreboard players set @s blue.tr.structures 12
execute unless score #.temp0 blue.misc matches 12.. if score @s blue.tr.blocks_walked >= #.temp blue.misc unless score #.tr.wayfinder_completed blue.config matches 1 at @s run function blue:tr/completion/z/wayfinder
scoreboard players operation #.temp blue.misc += #.tr.wayfinder_task blue.config
execute if score #.temp0 blue.misc matches 12..21 run title @s[scores={blue.tr.combat=0..}] actionbar [{"score":{"name":"@s","objective":"blue.tr.blocks_walked"},"color":"#F1FFC8"},{"text":"/","color":"gray"},{"score":{"name":"#.temp","objective":"blue.misc"}}," ",{"translate":"blue.tr.blocks_walked","fallback":"Blocks Walked"}]
execute if score #.temp0 blue.misc matches 12..21 if score @s blue.tr.blocks_walked >= #.temp blue.misc run scoreboard players set @s blue.tr.structures 22
execute if score #.temp0 blue.misc matches 12..21 if score @s blue.tr.blocks_walked >= #.temp blue.misc at @s run function blue:tr/completion/z/wayfinder
scoreboard players operation #.temp blue.misc += #.tr.wayfinder_task blue.config
execute if score #.temp0 blue.misc matches 22..31 run title @s[scores={blue.tr.combat=0..}] actionbar [{"score":{"name":"@s","objective":"blue.tr.blocks_walked"},"color":"#F1FFC8"},{"text":"/","color":"gray"},{"score":{"name":"#.temp","objective":"blue.misc"}}," ",{"translate":"blue.tr.blocks_walked","fallback":"Blocks Walked"}]
execute if score #.temp0 blue.misc matches 22..31 if score @s blue.tr.blocks_walked >= #.temp blue.misc run scoreboard players set @s blue.tr.structures 32
execute if score #.temp0 blue.misc matches 22..31 if score @s blue.tr.blocks_walked >= #.temp blue.misc at @s run function blue:tr/completion/z/wayfinder
execute unless score #.tr.random_task_defender blue.config matches 0 if entity @s[tag=!blue.tr.RTDCD,predicate=blue:r/10c] unless score @s blue.tr.structures matches 32.. at @s run function blue:tr/tasks/rtd/wayfinder