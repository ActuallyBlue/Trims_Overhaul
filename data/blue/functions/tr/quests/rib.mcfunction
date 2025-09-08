advancement revoke @s only blue:tr/quests/rib
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_rib=false}}] run return 0
execute if score #.tr.rib_completed blue.config matches 2 unless entity @s[tag=blue.tr.rib] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
tag @s add blue.tr.temp
execute as @e[type=wither,nbt={HurtTime:10s},sort=nearest,limit=1] at @s run function blue:tr/quests/rib_target
tag @s remove blue.tr.temp