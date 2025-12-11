data remove storage blue:trims armor
item replace block 200600 2 200600 container.3 from entity @s armor.head
item replace block 200600 2 200600 container.2 from entity @s armor.chest
item replace block 200600 2 200600 container.1 from entity @s armor.legs
item replace block 200600 2 200600 container.0 from entity @s armor.feet
data modify storage blue:trims inventory set from block 200600 2 200600 Items
data modify storage blue:trims armor.head set from storage blue:trims inventory[{Slot:3b}].tag.Trim
data modify storage blue:trims armor.chest set from storage blue:trims inventory[{Slot:2b}].tag.Trim
data modify storage blue:trims armor.legs set from storage blue:trims inventory[{Slot:1b}].tag.Trim
data modify storage blue:trims armor.feet set from storage blue:trims inventory[{Slot:0b}].tag.Trim
execute if entity @s[tag=blue.tr.mats.pieces] run function blue:tr/inv/mats/remove/checks
execute if entity @s[tag=blue.tr.mats.set] run function blue:tr/inv/mats/find
execute if score @s blue.tr.current_trim matches 13..18 run function blue:tr/inv/unequip/3rd
execute if score @s blue.tr.current_trim matches 7..12 run function blue:tr/inv/unequip/2nd
execute if score @s blue.tr.current_trim matches 1..6 run function blue:tr/inv/unequip/1st
execute unless score @s blue.tr.current_trim matches 1.. if data storage blue:trims armor run function blue:tr/inv/equip/checks
execute unless entity @s[tag=blue.tr.mats.set] if data storage blue:trims armor run function blue:tr/inv/mats/checks
advancement revoke @s only blue:tr/inv_checks