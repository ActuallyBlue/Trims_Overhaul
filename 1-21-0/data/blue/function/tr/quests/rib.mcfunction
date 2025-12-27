advancement revoke @s only blue:tr/quests/rib
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_rib=false}}] run return fail
execute if score #.tr.rib_completed blue.config matches 2 unless entity @s[tag=blue.tr.rib] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
tag @s add blue.tr.temp
execute as @n[type=wither,nbt={HurtTime:10s}] at @s run function blue:tr/quests/rib_target
tag @s remove blue.tr.temp