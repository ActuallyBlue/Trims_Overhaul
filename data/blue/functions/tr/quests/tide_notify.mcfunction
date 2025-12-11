execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_tide=false}}] run advancement revoke @s only blue:tr/quests/tide
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_tide=false}}] run return 0
tellraw @s {"translate":"blue.tr.tide_quest_info","fallback":"- Rare Drowned has been slain","color":"#199ADD"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 2