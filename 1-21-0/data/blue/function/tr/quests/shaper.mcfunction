advancement revoke @s only blue:tr/quests/shaper req
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_shaper=false}}] run return fail
execute if score #.tr.shaper_completed blue.config matches 2 unless entity @s[tag=blue.tr.shaper] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
advancement revoke @s only blue:tr/quests/shaper_multi
function blue:tr/completion/shaper