execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_spire=false}}] run return fail
tellraw @s {"translate":"blue.tr.spire_quest_info","fallback":"- Crystal prerequisite completed","color":"#199ADD"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 2