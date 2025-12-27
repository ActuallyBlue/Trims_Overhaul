advancement revoke @s only blue:tr/quests/tide_guardian
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_tide=false}}] run return fail
execute if score #.tr.tide_completed blue.config matches 2 unless entity @s[tag=blue.tr.tide] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
execute unless entity @e[type=elder_guardian,distance=..100,limit=1] run function blue:tr/completion/tide