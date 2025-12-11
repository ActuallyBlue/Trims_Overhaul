advancement revoke @s only blue:tr/quests/flow_reset
execute if entity @s[advancements={blue:tr/quests/flow_kills={7=true}}] run return fail
execute if score @s blue.tr.died matches 1.. run return fail
tellraw @s {"translate":"blue.tr.flow_quest_reset","fallback":"- You landed and lost your Flow progress","color":"#85B2C5"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 0.75
advancement revoke @s only blue:tr/quests/flow_kills