execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_dune
execute if score #.tr.dune_completed blue.config matches 0 if function blue:tr/inv/templates/unlock/is_limit if entity @s[advancements={blue:tr/blacklist={dune=false}}] run function blue:tr/completion/dune
execute if score #.tr.require_unlock blue.config matches 0 run return fail
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Dune","color":"#E7C547"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle falling_dust{block_state:{Name:sand}} ~ ~0.6 ~ 0.4 0.5 0.4 0 10