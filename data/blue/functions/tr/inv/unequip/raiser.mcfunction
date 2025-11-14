scoreboard players set @s blue.tr.current_trim 0
function blue:tr/inv/unequip/attributes
tag @s remove blue.tr.trim.raiser
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/raiser