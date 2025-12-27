advancement grant @s only blue:tr/tags unlocked_raiser
execute if entity @s[tag=blue.tr.raiser] run return fail
execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
scoreboard players add @s blue.tr.items_enchanted 0
advancement revoke @s only blue:tr/quests/raiser
function blue:shared/get_name
data modify storage blue:trims logs.append.trim set value {"translate":"Raiser","color":"#95B623"}
data modify storage blue:trims logs.unlock append from storage blue:trims logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Raiser","color":"#95B623"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle effect ~ ~0.5 ~ 0.7 0.6 0.7 0 12
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.raiser_quest","fallback":"Slay with the weakest of enchants","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"advancements.story.enchant_item.title","color":"gray"}]