execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_spire
scoreboard players add @s blue.tr.dragons_killed 0
function blue:shared/get_name
data modify storage blue:data trims.logs.append.trim set value {"translate":"Spire","color":"#BE20C7"}
data modify storage blue:data trims.logs.unlock append from storage blue:data trims.logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Spire","color":"#BE20C7"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle end_rod ~ ~1 ~ 0.4 0.6 0.4 0.05 10
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.spire_quest","fallback":"Endure true End Crystal bursts, then claim the Dragon Egg","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.spire_task","fallback":"Dragon Hunter","color":"gray"}]