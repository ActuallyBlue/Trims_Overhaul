execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_eye
scoreboard players add @s blue.tr.silverfish_killed 0
function blue:shared/get_name
data modify storage blue:data trims.logs.append.trim set value {"translate":"Eye","color":"#1F8A46"}
data modify storage blue:data trims.logs.unlock append from storage blue:data trims.logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return 0
execute if score #.tr.objective_type blue.config matches 3 run return 0
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Eye","color":"#1F8A46"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle glow ~ ~1 ~ 0.5 0.4 0.5 0.5 16
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.eye_quest","fallback":"Cast your sight and step into the glow","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.eye_task","fallback":"Silver Slayer","color":"gray"}]