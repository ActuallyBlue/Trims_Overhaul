execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_ward
execute if score #.tr.require_unlock blue.config matches 0 run return 0
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Ward","color":"#5C70AE"}]
particle sculk_charge_pop ~ ~1 ~ 0.5 0.6 0.5 0.02 10
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.ward_quest","fallback":"Defend against many in the deepest dark"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.ward_task","fallback":"Damage Soaker"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]