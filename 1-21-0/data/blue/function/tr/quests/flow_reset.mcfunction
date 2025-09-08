advancement revoke @s only blue:tr/quests/flow_reset
execute if score @s blue.tr.died matches 1.. run advancement revoke @s only blue:tr/quests/flow_kills
advancement revoke @s[advancements={blue:tr/quests/flow_kills={7=false}}] only blue:tr/quests/flow_kills