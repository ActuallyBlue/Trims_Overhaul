advancement revoke @s only blue:tr/quests/flow
advancement revoke @s only blue:tr/quests/flow_kills
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_flow=false}}] run return fail
execute if score #.tr.flow_completed blue.config matches 2 unless entity @s[tag=blue.tr.flow] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
function blue:tr/completion/flow