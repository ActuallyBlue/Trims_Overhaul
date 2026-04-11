advancement revoke @s only blue:tr/harvester
function blue:tr/effects/get_luck
scoreboard players add #.temp blue.misc 15
scoreboard players operation #.temp blue.misc *= #.silence.bonus_shards blue.config
scoreboard players operation #.temp blue.misc /= #100 blue.misc
execute if score #.temp blue.misc matches 1000.. run scoreboard players set #.temp blue.misc 1000
loot spawn ~ ~1 ~ loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"echo_shard","functions":[{"function":"set_count","count":{"min":0,"max":{"type":"score","target":{"type":"fixed","name":"#.temp"},"score":"blue.misc","scale":0.1}}}]}]}]}