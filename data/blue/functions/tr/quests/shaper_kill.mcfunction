advancement revoke @s only blue:tr/quests/shaper_kill
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_shaper=false}}] run advancement revoke @s only blue:tr/quests/shaper_multi
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_shaper=false}}] run return 0
execute if score #.tr.shaper_completed blue.config matches 2 unless entity @s[tag=blue.tr.shaper] run advancement revoke @s only blue:tr/quests/shaper_multi
execute if score #.tr.shaper_completed blue.config matches 2 unless entity @s[tag=blue.tr.shaper] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run advancement revoke @s only blue:tr/quests/shaper_multi
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
advancement grant @s[advancements={blue:tr/quests/shaper_multi={5=true}}] only blue:tr/quests/shaper_multi 6
advancement grant @s[advancements={blue:tr/quests/shaper_multi={4=true}}] only blue:tr/quests/shaper_multi 5
advancement grant @s[advancements={blue:tr/quests/shaper_multi={3=true}}] only blue:tr/quests/shaper_multi 4
advancement grant @s[advancements={blue:tr/quests/shaper_multi={2=true}}] only blue:tr/quests/shaper_multi 3
advancement grant @s[advancements={blue:tr/quests/shaper_multi={1=true}}] only blue:tr/quests/shaper_multi 2
advancement grant @s only blue:tr/quests/shaper_multi 1
schedule function blue:tr/quests/shaper_delay 1t