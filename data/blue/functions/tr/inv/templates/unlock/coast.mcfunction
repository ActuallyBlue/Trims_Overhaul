execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_coast
scoreboard players add @s blue.tr.items_fished 0
recipe give @s blue:tr/coast
function blue:shared/get_name
data modify storage blue:trims logs.append.trim set value {"translate":"Coast","color":"#C1C888"}
data modify storage blue:trims logs.unlock append from storage blue:trims logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return 0
execute if score #.tr.objective_type blue.config matches 3 run return 0
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Coast","color":"#C1C888"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle white_ash ~0.7 ~2 ~0.7 0.6 0.5 0.6 0 64
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.coast_quest","fallback":"Forge the template of the sea's heart","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.coast_task","fallback":"Sandy Catcher","color":"gray"}]