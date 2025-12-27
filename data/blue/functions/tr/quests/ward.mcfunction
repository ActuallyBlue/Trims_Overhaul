advancement revoke @s only blue:tr/quests/ward
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_ward=false}}] run return 0
execute if score #.tr.ward_completed blue.config matches 2 unless entity @s[tag=blue.tr.ward] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return 0
scoreboard players reset #.temp0 blue.misc
execute on attacker run function blue:tr/quests/ward_attacker
function blue:tr/quests/ward_store
execute if score #.temp0 blue.misc matches 1 run playsound block.note_block.bell player @s ~ ~ ~ 0.5 2
execute if score #.temp0 blue.misc matches 1 run title @s actionbar [{"translate":"blue.tr.ward_quest_info","fallback":"New Attack Blocked!","color":"#5C70AE"},{"text":" • ","color":"gray"},{"score":{"name":"#.temp","objective":"blue.misc"}},"/",{"score":{"name":"#.tr.ward_quest","objective":"blue.config"}}]
execute if score #.temp blue.misc >= #.tr.ward_quest blue.config run function blue:tr/completion/ward