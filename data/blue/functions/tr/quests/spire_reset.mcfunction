advancement revoke @s only blue:tr/quests/spire_crystals
advancement revoke @s only blue:tr/quests/spire_reset
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_spire=false}}] run return 0
tellraw @s {"translate":"blue.tr.spire_quest_reset","fallback":"- You landed on End Stone and lost your Spire progress","color":"#BE20C7"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 0.75