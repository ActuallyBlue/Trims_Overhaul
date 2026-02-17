advancement revoke @s only blue:tr/quests/host req
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_host=false}}] run return fail
execute if score #.tr.host_completed blue.config matches 2 unless entity @s[tag=blue.tr.host] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
execute store result score #.temp blue.misc if entity @e[distance=..6,type=villager]
execute if score #.temp blue.misc >= #.tr.host_quest blue.config unless entity @e[distance=6.01..64,limit=1,type=villager] run function blue:tr/completion/host