execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_wayfinder
scoreboard players add @s blue.tr.structures 0
tag @s add blue.tr.no_display
execute if score #.tr.objective_type blue.config matches 1 if entity @s[advancements={blue:tr/blacklist={wayfinder=false}}] run function blue:tr/quests/wayfinder
tag @s remove blue.tr.no_display
execute if score #.tr.require_unlock blue.config matches 0 run return 0
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Wayfinder","color":"#F1FFC8"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle enchant ~ ~1 ~ 0.4 0.7 0.4 0.5 32
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.wayfinder_quest","fallback":"Discover all the world has to offer"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.wayfinder_task","fallback":"Wanderer"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]