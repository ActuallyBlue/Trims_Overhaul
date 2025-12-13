advancement revoke @s only blue:tr/quests/flow_reset
execute if entity @s[advancements={blue:tr/quests/flow_kills={7=true}}] run return fail
execute store success score #.temp blue.misc if entity @s[advancements={blue:tr/quests/flow_kills={3=true}}]
advancement revoke @s only blue:tr/quests/flow_kills
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_flow=false}}] run return fail
execute if score @s blue.tr.died matches 1.. run return fail
execute if score #.temp blue.misc matches 0 run return fail
tellraw @s {"translate":"blue.tr.flow_quest_reset","fallback":"- You landed and lost your Flow progress","color":"#85B2C5"}
playsound block.note_block.bell player @s ~ ~ ~ 0.5 0.75