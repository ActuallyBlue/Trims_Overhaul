execute if score #.tr.snout_completed blue.config matches 1 run return fail
execute unless score #.tr.objective_type blue.config matches 1 run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_snout=false}}] run return fail
execute if score #.tr.snout_completed blue.config matches 2 unless entity @s[tag=blue.tr.snout] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
execute if entity @s[advancements={blue:tr/blacklist={snout=true}}] run return fail
function blue:tr/completion/snout