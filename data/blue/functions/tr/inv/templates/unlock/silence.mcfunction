execute if entity @s[advancements={blue:tr/tags={tutorial_pickup_trim=false}}] run function blue:tr/inv/templates/unlock/tutorial
advancement grant @s only blue:tr/tags unlocked_silence
execute if score #.tr.require_unlock blue.config matches 0 run return 0
tellraw @s [{"translate":"blue.tr.unlock_obj","fallback":"You've unlocked the objective for","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"Silence","color":"#3842Cf"}]
playsound block.chest.locked player @s ~ ~ ~ 2 0.75
particle sculk_soul ~ ~1 ~ 0.4 0.6 0.4 0 20
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.silence_quest","fallback":"Strike the Warden in its lair, then again on the surface"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"text":" - ","color":"gray"},{"translate":"blue.tr.silence_task","fallback":"Warden Slayer"}," ",{"storage":"blue:data","nbt":"trims.unlock_text","interpret":true}]