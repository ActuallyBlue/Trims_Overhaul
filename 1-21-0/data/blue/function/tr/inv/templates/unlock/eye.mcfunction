execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_eye
execute if score #.tr.eye_completed blue.config matches 0 if function blue:tr/inv/templates/unlock/is_limit if entity @s[advancements={blue:tr/blacklist={eye=false}}] run function blue:tr/completion/eye
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Eye","color":"#1F8A46"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle glow ~ ~1 ~ 0.5 0.4 0.5 0.5 16