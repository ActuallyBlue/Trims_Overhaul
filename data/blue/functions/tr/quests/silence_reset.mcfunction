tellraw @s {"translate":"blue.tr.silence_quest_reset","fallback":"- You died and lost your Silence progress","color":"#1643be"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 0.75
advancement revoke @s only blue:tr/quests/silence_reset
advancement revoke @s only blue:tr/quests/silence_down