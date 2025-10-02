execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_dune
execute if score #.tr.require_unlock blue.config matches 0 run return 0
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Dune","color":"#E7C547"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle falling_dust sand ~ ~0.6 ~ 0.4 0.5 0.4 0 10
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.dune_quest","fallback":"Crush them beneath the shifting sands"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.dune_task","fallback":"Desert Wanderer"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]