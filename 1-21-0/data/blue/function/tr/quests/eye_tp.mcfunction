scoreboard players reset @s blue.tr.used_pearl
execute store success score #.temp blue.misc if entity @s[advancements={blue:tr/quests/eye_tp={fell=true}}]
advancement revoke @s only blue:tr/quests/eye_tp
execute if score #.temp blue.misc matches 1 run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_eye=false}}] run return fail
execute if score #.tr.eye_completed blue.config matches 2 unless entity @s[tag=blue.tr.eye] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
execute unless entity @e[tag=blue.tr.eye_quest,distance=..20,limit=1,type=area_effect_cloud] run return fail
function blue:tr/completion/eye
kill @e[tag=blue.tr.eye_quest,type=area_effect_cloud]
scoreboard objectives remove blue.tr.used_pearl