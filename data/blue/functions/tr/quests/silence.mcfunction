advancement revoke @s only blue:tr/quests/silence
execute positioned over motion_blocking store success score #.temp blue.misc if entity @s[distance=..2]
execute if score #.temp blue.misc matches 0 run advancement revoke @s only blue:tr/quests/silence second
execute if score #.temp blue.misc matches 0 run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_silence=false}}] run return 0
execute if score #.tr.silence_completed blue.config matches 2 unless entity @s[tag=blue.tr.silence] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
function blue:tr/completion/silence