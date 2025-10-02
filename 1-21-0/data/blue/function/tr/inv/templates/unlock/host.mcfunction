execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_host
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Host","color":"#A34646"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle damage_indicator ~ ~0.5 ~ 0.4 0.5 0.4 0.1 6
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.host_quest","fallback":"Gather a large population in close council"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.host_task","fallback":"Curist"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]