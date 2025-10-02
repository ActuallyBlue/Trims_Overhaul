execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_rib
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Rib","color":"#E6484B"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle lava ~ ~0.6 ~ 0.6 0.3 0.6 0 6
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.rib_quest","fallback":"Burn the Wither with flames while wearing its crown"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.rib_task","fallback":"Lavawalker"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]