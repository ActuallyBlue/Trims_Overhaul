scoreboard players set @s blue.tr.current_trim 0
tag @s[tag=blue.tr.mats.naut] remove blue.tr.mats.naut
tag @s remove blue.tr.trim.wild
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/wild