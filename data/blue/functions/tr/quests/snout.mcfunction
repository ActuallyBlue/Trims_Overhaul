execute if score #.tr.snout_completed blue.config matches 1 run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_snout=false}}] run return 0
execute if score #.tr.snout_completed blue.config matches 2 unless entity @s[tag=blue.tr.snout] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
execute if entity @s[advancements={blue:tr/blacklist={snout=true}}] run return 0
function blue:tr/completion/snout