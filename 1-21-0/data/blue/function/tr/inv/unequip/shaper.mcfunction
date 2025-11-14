scoreboard players set @s blue.tr.current_trim 0
tag @s[tag=blue.tr.mats.powder] remove blue.tr.mats.powder
tag @s remove blue.tr.trim.shaper
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/shaper