execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_tide
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Tide","color":"#199ADD"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle splash ~ ~1 ~ 0.4 0.6 0.4 0 32
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.tide_quest","fallback":"Slay the rarest of Drowneds, and the last Elder Guardian"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.tide_task","fallback":"Expert Swimmer"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]