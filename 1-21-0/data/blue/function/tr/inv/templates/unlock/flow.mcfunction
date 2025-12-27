advancement grant @s only blue:tr/tags unlocked_flow
execute if entity @s[tag=blue.tr.flow] run return fail
execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
scoreboard players add @s blue.tr.ominous_vault 0
function blue:shared/get_name
data modify storage blue:trims logs.append.trim set value {"translate":"Flow","color":"#85B2C5"}
data modify storage blue:trims logs.unlock append from storage blue:trims logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Flow","color":"#85B2C5"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle trial_spawner_detection_ominous ~ ~0.5 ~ 0.3 0.6 0.3 0.05 3
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.flow_quest","fallback":"Seven strikes aloft, then one that shakes the world","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.flow_task","fallback":"Omen Opener","color":"gray"}]