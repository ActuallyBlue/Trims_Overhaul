execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_bolt
scoreboard players add @s blue.tr.plain_vault 0
function blue:shared/get_name
data modify storage blue:data trims.logs.append.trim set value {"translate":"Bolt","color":"#B65D1A"}
data modify storage blue:data trims.logs.unlock append from storage blue:data trims.logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Bolt","color":"#B65D1A"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle trial_spawner_detection ~ ~0.5 ~ 0.3 0.6 0.3 0.05 2
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.bolt_quest","fallback":"Play the Creator's song beneath the night sky","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.bolt_task","fallback":"Vault Opener","color":"gray"}]