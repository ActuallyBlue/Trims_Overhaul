advancement revoke @s only blue:tr/quests/eye req
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_eye=false}}] run return 0
execute if score #.tr.eye_completed blue.config matches 2 unless entity @s[tag=blue.tr.eye] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
scoreboard players set #.temp blue.misc 0
execute anchored eyes if block ^ ^ ^4 #blue:trims/transparent if block ^ ^ ^5.5 #blue:trims/transparent if block ^ ^ ^7 #blue:trims/transparent if block ^ ^ ^8.5 #blue:trims/transparent if block ^ ^ ^10 #blue:trims/transparent if block ^ ^ ^11.5 #blue:trims/transparent if block ^ ^ ^13 #blue:trims/transparent if block ^ ^ ^14.5 #blue:trims/transparent if block ^ ^ ^16 #blue:trims/transparent if block ^ ^ ^17.5 #blue:trims/transparent if block ^ ^ ^19 #blue:trims/transparent positioned ^ ^ ^20 run function blue:tr/quests/eye_cast
title @s actionbar [{"score":{"name":"#.temp","objective":"blue.misc"},"color":"green"},{"text":"/","color":"gray"},{"text":"12","color":"dark_green"}]
execute unless score #.temp blue.misc matches 12.. run return 0
title @s actionbar [{"score":{"name":"#.temp","objective":"blue.misc"},"color":"green"},{"text":"/","color":"gray"},{"text":"12","color":"green"}]
scoreboard objectives add blue.tr.used_pearl used:ender_pearl
function blue:tr/quests/eye_reveal