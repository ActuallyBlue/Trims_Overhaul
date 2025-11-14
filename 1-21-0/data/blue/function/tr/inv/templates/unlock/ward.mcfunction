execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_ward
scoreboard players add @s blue.tr.damage_blocked 0
function blue:shared/get_name
data modify storage blue:data trims.logs.append.trim set value {"translate":"Ward","color":"#5C70AE"}
data modify storage blue:data trims.logs.unlock append from storage blue:data trims.logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Ward","color":"#5C70AE"}]
particle sculk_charge_pop ~ ~1 ~ 0.5 0.6 0.5 0.02 10
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.ward_quest","fallback":"Defend against many in the deepest dark","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.ward_task","fallback":"Damage Soaker","color":"gray"}]