execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_wild
scoreboard players add @s blue.tr.animals_tamed 0
scoreboard players add @s blue.tr.animals_bred 0
function blue:shared/get_name
data modify storage blue:data trims.logs.append.trim set value {"translate":"Wild","color":"#00D529"}
data modify storage blue:data trims.logs.unlock append from storage blue:data trims.logs.append
execute if score #.tr.require_unlock blue.config matches 0 run return fail
execute if score #.tr.objective_type blue.config matches 3 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Wild","color":"#00D529"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle falling_spore_blossom ~ ~1.2 ~ 0.5 0.7 0.5 0 16
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.wild_quest","fallback":"Lead all of nature into its Lush Cave","color":"gray"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true,"italic":true},{"translate":"blue.tr.wild_task","fallback":"Animal Kingdom","color":"gray"}]