tellraw @s {"translate":"blue.tr.spire_quest_reset","fallback":"- You landed on End stone and lost your Spire progress","color":"#BE20C7"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 0.75
advancement revoke @s only blue:tr/quests/spire_crystals
advancement revoke @s only blue:tr/quests/spire_reset