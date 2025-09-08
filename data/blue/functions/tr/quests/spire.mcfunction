advancement revoke @s only blue:tr/quests/spire
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_spire=false}}] run return 0
execute if score #.tr.spire_completed blue.config matches 2 unless entity @s[tag=blue.tr.spire] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
function blue:tr/completion/spire