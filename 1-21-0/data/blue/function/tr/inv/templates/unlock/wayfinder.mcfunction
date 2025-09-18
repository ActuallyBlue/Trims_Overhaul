execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_wayfinder
scoreboard players set @s blue.tr.structures 100
execute if score #.tr.objective_type blue.config matches 1 if entity @s[advancements={blue:tr/blacklist={wayfinder=false}}] run function blue:tr/quests/wayfinder
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Wayfinder","color":"#F1FFC8"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle enchant ~ ~1 ~ 0.4 0.7 0.4 0.5 32