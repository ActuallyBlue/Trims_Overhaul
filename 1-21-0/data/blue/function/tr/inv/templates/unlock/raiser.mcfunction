execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_raiser
advancement revoke @s only blue:tr/quests/raiser
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Raiser","color":"#95B623"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle effect ~ ~0.5 ~ 0.7 0.6 0.7 0 12
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.raiser_quest","fallback":"Slay with the weakest of enchants"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.raiser_task","fallback":"Enchanter"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]