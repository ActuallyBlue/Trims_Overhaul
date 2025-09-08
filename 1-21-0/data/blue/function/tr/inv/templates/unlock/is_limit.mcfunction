execute unless score #.tr.objective_type blue.config matches 3 run return fail
execute unless score #.tr.limit_owned_trims blue.config matches 1 run return 1
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=false}}] run return 1