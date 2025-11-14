scoreboard players set @s blue.tr.current_trim 0
tag @s[tag=blue.tr.mats.blaze] remove blue.tr.mats.blaze
tag @s remove blue.tr.trim.rib
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/rib
team leave @s[team=blue.tr.rib]