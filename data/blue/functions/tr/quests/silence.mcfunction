execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_silence=false}}] run advancement revoke @s only blue:tr/quests/silence_down
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_silence=false}}] run return 0
execute if score #.tr.silence_completed blue.config matches 2 unless entity @s[tag=blue.tr.silence] run advancement revoke @s only blue:tr/quests/silence_down
execute if score #.tr.silence_completed blue.config matches 2 unless entity @s[tag=blue.tr.silence] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run advancement revoke @s only blue:tr/quests/silence_down
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
execute if entity @s[advancements={blue:tr/quests/silence_up=false}] run playsound block.note_block.bell player @s ~ ~ ~ 0.5 2
execute if entity @s[advancements={blue:tr/quests/silence_up=false}] run tellraw @s {"translate":"blue.tr.silence_quest_info","fallback":"- First Warden has been slain","color":"#1643be"}
execute if entity @s[advancements={blue:tr/quests/silence_up=false}] run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_silence=false}}] run return 0
execute if score #.tr.silence_completed blue.config matches 2 unless entity @s[tag=blue.tr.silence] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
function blue:tr/completion/silence