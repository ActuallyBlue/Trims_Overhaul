execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_shaper
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Shaper","color":"#8F8F8F"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle smoke ~ ~1 ~ 0.1 0.2 0.1 0.1 7
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.shaper_quest","fallback":"Kill with TNT, then endure Charged wrath"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.shaper_task","fallback":"Blastproof"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]