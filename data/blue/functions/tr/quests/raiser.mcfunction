advancement revoke @s only blue:tr/quests/raiser
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_raiser=false}}] run return 0
execute if score #.tr.raiser_completed blue.config matches 2 unless entity @s[tag=blue.tr.raiser] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return 0
function blue:tr/completion/raiser