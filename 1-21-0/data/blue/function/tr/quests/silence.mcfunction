execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_silence=false}}] run return run advancement revoke @s only blue:tr/quests/silence_down
execute if score #.tr.silence_completed blue.config matches 2 unless entity @s[tag=blue.tr.silence] run return run advancement revoke @s only blue:tr/quests/silence_down
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return run advancement revoke @s only blue:tr/quests/silence_down
execute if entity @s[advancements={blue:tr/quests/silence_up=false}] run playsound block.note_block.bell player @s ~ ~ ~ 0.5 2
execute if entity @s[advancements={blue:tr/quests/silence_up=false}] run return run tellraw @s {"translate":"blue.tr.silence_quest_info","fallback":"- First Warden has been slain","color":"#1643be"}
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_silence=false}}] run return fail
execute if score #.tr.silence_completed blue.config matches 2 unless entity @s[tag=blue.tr.silence] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
function blue:tr/completion/silence