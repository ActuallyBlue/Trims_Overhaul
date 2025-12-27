advancement revoke @s only blue:tr/quests/bolt
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_bolt=false}}] run return fail
execute if score #.tr.bolt_completed blue.config matches 2 unless entity @s[tag=blue.tr.bolt] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
function blue:tr/completion/bolt