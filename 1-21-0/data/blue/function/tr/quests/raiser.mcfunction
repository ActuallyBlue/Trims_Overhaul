advancement revoke @s only blue:tr/quests/raiser
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_raiser=false}}] run return fail
execute if score #.tr.raiser_completed blue.config matches 2 unless entity @s[tag=blue.tr.raiser] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
function blue:tr/completion/raiser