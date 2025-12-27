advancement grant @s only blue:tr/tags unlocked_tide
execute if entity @s[tag=blue.tr.tide] run return fail
execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
scoreboard players add @s blue.tr.blocks_swam 0
function blue:shared/get_name
data modify storage blue:trims logs.append.trim set value {"translate":"Tide","color":"#199ADD"}
data modify storage blue:trims logs.unlock append from storage blue:trims logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Tide","color":"#199ADD"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle splash ~ ~1 ~ 0.4 0.6 0.4 0 32
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.tide_quest","fallback":"Slay the rarest of Drowneds, and the last Elder Guardian","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.tide_task","fallback":"Expert Swimmer","color":"gray"}]