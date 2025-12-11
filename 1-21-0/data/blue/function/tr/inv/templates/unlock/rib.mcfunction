execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_rib
scoreboard players add @s blue.tr.lava_seconds 0
function blue:shared/get_name
data modify storage blue:trims logs.append.trim set value {"translate":"Rib","color":"#E6484B"}
data modify storage blue:trims logs.unlock append from storage blue:trims logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Rib","color":"#E6484B"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle lava ~ ~0.6 ~ 0.6 0.3 0.6 0 6
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.rib_quest","fallback":"Burn the Wither with flames while wearing its crown","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.rib_task","fallback":"Lavawalker","color":"gray"}]