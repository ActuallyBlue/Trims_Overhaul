execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_flow
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Flow","color":"#85B2C5"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle trial_spawner_detection_ominous ~ ~0.5 ~ 0.3 0.6 0.3 0.05 3