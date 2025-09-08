execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_coast
recipe give @s blue:tr/coast
execute if score #.tr.coast_completed blue.config matches 0 if function blue:tr/inv/templates/unlock/is_limit if entity @s[advancements={blue:tr/blacklist={coast=false}}] run function blue:tr/completion/coast
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Coast","color":"#C1C888"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle white_ash ~0.7 ~2 ~0.7 0.6 0.5 0.6 0 64