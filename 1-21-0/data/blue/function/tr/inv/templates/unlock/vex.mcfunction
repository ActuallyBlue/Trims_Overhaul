execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_vex
scoreboard players add @s blue.tr.mobs_killed 0
function blue:shared/get_name
data modify storage blue:data trims.logs.append.trim set value {"translate":"Vex","color":"#CFC6A5"}
data modify storage blue:data trims.logs.unlock append from storage blue:data trims.logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Vex","color":"#CFC6A5"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle white_smoke ~ ~0.7 ~ 0.4 0.5 0.4 0.05 8
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.vex_quest","fallback":"Strike down the one who mimics the Vex","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.vex_task","fallback":"Relentless Killer","color":"gray"}]