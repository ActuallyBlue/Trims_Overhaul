item replace block 200600 2 200600 container.7 from entity @a[tag=blue.tr.transfer_user,limit=1] armor.head
item replace block 200600 2 200600 container.6 from entity @a[tag=blue.tr.transfer_user,limit=1] armor.chest
item replace block 200600 2 200600 container.5 from entity @a[tag=blue.tr.transfer_user,limit=1] armor.legs
item replace block 200600 2 200600 container.4 from entity @a[tag=blue.tr.transfer_user,limit=1] armor.feet
data modify storage blue:trims inventory set from block 200600 2 200600 Items
data modify storage blue:trims transfer[{Slot:7b}].tag.Trim set from storage blue:trims inventory[{Slot:7b}].tag.Trim
data modify storage blue:trims transfer[{Slot:6b}].tag.Trim set from storage blue:trims inventory[{Slot:6b}].tag.Trim
data modify storage blue:trims transfer[{Slot:5b}].tag.Trim set from storage blue:trims inventory[{Slot:5b}].tag.Trim
data modify storage blue:trims transfer[{Slot:4b}].tag.Trim set from storage blue:trims inventory[{Slot:4b}].tag.Trim
data modify block 200600 2 200600 Items set from storage blue:trims transfer
item replace entity @s armor.head from block 200600 2 200600 container.7
item replace entity @s armor.chest from block 200600 2 200600 container.6
item replace entity @s armor.legs from block 200600 2 200600 container.5
item replace entity @s armor.feet from block 200600 2 200600 container.4