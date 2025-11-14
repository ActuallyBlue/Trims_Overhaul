scoreboard players set @s blue.tr.current_trim 0
function blue:tr/inv/unequip/attributes
tag @s[tag=blue.tr.mats.shulker] remove blue.tr.mats.shulker
tag @s remove blue.tr.trim.spire
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/spire
execute if predicate blue:tr/aperture_res run effect clear @s resistance
scoreboard players set #.reversal_charge blue.misc 0