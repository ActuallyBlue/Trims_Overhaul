scoreboard players set @s blue.tr.current_trim 0
tag @s[tag=blue.tr.mats.shard] remove blue.tr.mats.shard
tag @s remove blue.tr.trim.silence
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/silence
kill b163102f-0-f-0-1
team leave @s[team=blue.tr.silence]