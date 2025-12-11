advancement revoke @s only blue:tr/quests/wayfinder_display
execute if score #.tr.wayfinder_completed blue.config matches 1.. unless entity @s[tag=blue.tr.wayfinder] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
scoreboard players operation #.temp blue.misc = @s blue.tr.structures
scoreboard players set @s blue.tr.structures 0
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={mushroom_fields=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ancient_city=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={bastion_remnant=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={buried_treasure=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={desert_pyramid=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={end_city=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={fortress=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={igloo=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={jungle_pyramid=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={mansion=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={mineshaft=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={mineshaft_mesa=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={monument=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={nether_fossil=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ocean_ruin_cold=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ocean_ruin_warm=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={pillager_outpost=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ruined_portal=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ruined_portal_desert=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ruined_portal_jungle=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ruined_portal_mountain=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ruined_portal_nether=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ruined_portal_ocean=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={ruined_portal_swamp=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={shipwreck=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={shipwreck_beached=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={stronghold=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={swamp_hut=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={trail_ruins=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={village_desert=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={village_plains=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={village_savanna=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={village_snowy=true}}] blue.tr.structures 1
scoreboard players add @s[advancements={blue:tr/quests/wayfinder={village_taiga=true}}] blue.tr.structures 1
execute unless score #.temp blue.misc < @s blue.tr.structures run return 0
playsound block.note_block.bell player @s[tag=!blue.tr.no_display] ~ ~ ~ 0.5 2
title @s[scores={blue.tr.structures=..11},tag=!blue.tr.no_display] actionbar [{"translate":"blue.tr.wayfinder_quest_info","fallback":"New Structure!","color":"#F1FFC8"},{"text":" • ","color":"gray"},{"score":{"name":"@s","objective":"blue.tr.structures"}},"/12"]
title @s[scores={blue.tr.structures=12},tag=!blue.tr.no_display] actionbar [{"translate":"blue.tr.wayfinder_quest_info","fallback":"New Structure!","color":"#F1FFC8"},{"text":" • ","color":"gray"},{"score":{"name":"@s","objective":"blue.tr.structures"}},"/12 > 22"]
title @s[scores={blue.tr.structures=13..21},tag=!blue.tr.no_display] actionbar [{"translate":"blue.tr.wayfinder_quest_info","fallback":"New Structure!","color":"#F1FFC8"},{"text":" • ","color":"gray"},{"score":{"name":"@s","objective":"blue.tr.structures"}},"/22"]
title @s[scores={blue.tr.structures=22},tag=!blue.tr.no_display] actionbar [{"translate":"blue.tr.wayfinder_quest_info","fallback":"New Structure!","color":"#F1FFC8"},{"text":" • ","color":"gray"},{"score":{"name":"@s","objective":"blue.tr.structures"}},"/22 > 32"]
title @s[scores={blue.tr.structures=23..},tag=!blue.tr.no_display] actionbar [{"translate":"blue.tr.wayfinder_quest_info","fallback":"New Structure!","color":"#F1FFC8"},{"text":" • ","color":"gray"},{"score":{"name":"@s","objective":"blue.tr.structures"}},"/32"]
execute if score @s blue.tr.structures matches 12.. unless entity @s[tag=blue.tr.wayfinder] unless score #.tr.wayfinder_completed blue.config matches 1.. run function blue:tr/quests/wayfinder_grant
execute if score @s blue.tr.structures matches 22 run function blue:tr/completion/z/wayfinder
execute if score @s blue.tr.structures matches 32 run function blue:tr/completion/z/wayfinder