advancement revoke @s only blue:tr/quests/rib_complete
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_rib=false}}] run return 0
execute if score #.tr.rib_completed blue.config matches 2 unless entity @s[tag=blue.tr.rib] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
function blue:tr/completion/rib