advancement revoke @s only blue:tr/quests/host
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_host=false}}] run return 0
execute if score #.tr.host_completed blue.config matches 2 unless entity @s[tag=blue.tr.host] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
execute store result score #.temp blue.misc if entity @e[type=villager,distance=..6]
execute if score #.temp blue.misc matches 14.. run function blue:tr/completion/host