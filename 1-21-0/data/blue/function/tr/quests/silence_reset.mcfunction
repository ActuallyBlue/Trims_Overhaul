advancement revoke @s only blue:tr/quests/silence_reset
advancement revoke @s only blue:tr/quests/silence_down
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_silence=false}}] run return fail
tellraw @s {"translate":"blue.tr.silence_quest_reset","fallback":"- You died and lost your Silence progress","color":"#1643be"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 0.75