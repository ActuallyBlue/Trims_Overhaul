execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_host
execute if score #.tr.objective_type blue.config matches 3 unless score #.tr.limit_owned_trims blue.config matches 1 if score #.tr.host_completed blue.config matches 0 if entity @s[advancements={blue:tr/blacklist={host=false}}] run function blue:tr/completion/host
execute if score #.tr.objective_type blue.config matches 3 if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=false}}] if score #.tr.host_completed blue.config matches 0 if entity @s[advancements={blue:tr/blacklist={host=false}}] run function blue:tr/completion/host
execute if score #.tr.require_unlock blue.config matches 0 run return 0
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Host","color":"#A34646"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle damage_indicator ~ ~0.5 ~ 0.4 0.5 0.4 0.1 6