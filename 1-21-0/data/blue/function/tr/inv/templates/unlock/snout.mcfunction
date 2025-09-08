execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_snout
execute if score #.tr.objective_type blue.config matches 1 if entity @s[advancements={blue:tr/quests/snout=true}] run function blue:tr/quests/snout
execute if score #.tr.snout_completed blue.config matches 0 if function blue:tr/inv/templates/unlock/is_limit if entity @s[advancements={blue:tr/blacklist={snout=false}}] run function blue:tr/completion/snout
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Snout","color":"#F2B01A"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle wax_on ~ ~1.2 ~ 0.4 0.6 0.4 0 12