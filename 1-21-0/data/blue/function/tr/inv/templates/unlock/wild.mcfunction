execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_wild
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Wild","color":"#00D529"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle falling_spore_blossom ~ ~1.2 ~ 0.5 0.7 0.5 0 16
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.wild_quest","fallback":"Lead all of nature into its Lush Cave"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.wild_task","fallback":"Animal Friend"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]