execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_vex
execute if score #.tr.require_unlock blue.config matches 0 run return 0
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Vex","color":"#CFC6A5"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle dust 0.81 0.78 0.65 1 ~ ~0.7 ~ 0.4 0.5 0.4 0.05 8
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.vex_quest","fallback":"Strike down the one who mimics the Vex"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.vex_task","fallback":"Relentless Killer"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]