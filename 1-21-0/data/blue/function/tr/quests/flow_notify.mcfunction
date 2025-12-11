execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_flow=false}}] run return fail
tellraw @s {"translate":"blue.tr.flow_quest_info","fallback":"- Kill streak has been completed","color":"#85B2C5"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 2