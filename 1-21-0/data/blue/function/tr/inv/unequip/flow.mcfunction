scoreboard players set @s blue.tr.current_trim 0
function blue:tr/inv/unequip/attributes
tag @s[tag=blue.tr.mats.wind] remove blue.tr.mats.wind
tag @s remove blue.tr.trim.flow
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/flow
scoreboard players reset #.barrage_time blue.misc