$item replace block 200600 2 200600 container.0 from entity @s $(slot)
data modify storage blue:trims temp.bundle set from block 200600 2 200600 Items[{Slot:0b}].components.minecraft:bundle_contents[{components:{"minecraft:trim":{}}}]
execute unless data storage blue:trims temp.bundle.count run data modify storage blue:trims temp.bundle.count set value 1
function blue:tr/inv/bundle/spawn with storage blue:trims temp.bundle
data remove block 200600 2 200600 Items[{Slot:0b}].components.minecraft:bundle_contents[{components:{"minecraft:trim":{}}}]
$item replace entity @s $(slot) from block 200600 2 200600 container.0
data remove storage blue:trims temp.bundle