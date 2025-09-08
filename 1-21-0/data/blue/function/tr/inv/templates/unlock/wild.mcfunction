execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_wild
execute if score #.tr.wild_completed blue.config matches 0 if function blue:tr/inv/templates/unlock/is_limit if entity @s[advancements={blue:tr/blacklist={wild=false}}] run function blue:tr/completion/wild
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Wild","color":"#00D529"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle falling_spore_blossom ~ ~1.2 ~ 0.5 0.7 0.5 0 16