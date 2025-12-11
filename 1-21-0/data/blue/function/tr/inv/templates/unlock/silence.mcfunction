execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_silence
function blue:shared/get_name
data modify storage blue:trims logs.append.trim set value {"translate":"Silence","color":"#3842Cf"}
data modify storage blue:trims logs.unlock append from storage blue:trims logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Silence","color":"#3842Cf"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle sculk_soul ~ ~1 ~ 0.4 0.6 0.4 0 20
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.silence_quest","fallback":"Strike the Warden in its lair, then again on the surface","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:trims","nbt":"unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.silence_task","fallback":"Warden Slayer","color":"gray"}]