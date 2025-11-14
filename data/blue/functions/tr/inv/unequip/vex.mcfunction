scoreboard players set @s blue.tr.current_trim 0
tag @s remove blue.tr.trim.vex
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/vex