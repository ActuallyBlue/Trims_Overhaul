scoreboard players set @s blue.tr.current_trim 0
function blue:tr/inv/unequip/attributes
tag @s remove blue.tr.trim.ward
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/ward
scoreboard players set @s blue.tr.damage_blocked 0