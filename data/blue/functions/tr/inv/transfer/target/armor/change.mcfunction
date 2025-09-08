item replace block 200600 2 200600 container.3 from entity @a[tag=blue.tr.transfer_user,limit=1] armor.head
item replace block 200600 2 200600 container.2 from entity @a[tag=blue.tr.transfer_user,limit=1] armor.chest
item replace block 200600 2 200600 container.1 from entity @a[tag=blue.tr.transfer_user,limit=1] armor.legs
item replace block 200600 2 200600 container.0 from entity @a[tag=blue.tr.transfer_user,limit=1] armor.feet
data modify storage blue:data trims.inventory set from block 200600 2 200600 Items
data modify storage blue:data trims.transfer[{Slot:3b}].tag.Trim set from storage blue:data trims.inventory[{Slot:3b}].tag.Trim
data modify storage blue:data trims.transfer[{Slot:2b}].tag.Trim set from storage blue:data trims.inventory[{Slot:2b}].tag.Trim
data modify storage blue:data trims.transfer[{Slot:1b}].tag.Trim set from storage blue:data trims.inventory[{Slot:1b}].tag.Trim
data modify storage blue:data trims.transfer[{Slot:0b}].tag.Trim set from storage blue:data trims.inventory[{Slot:0b}].tag.Trim
data modify block 200600 2 200600 Items set from storage blue:data trims.transfer
item replace entity @s armor.head from block 200600 2 200600 container.3
item replace entity @s armor.chest from block 200600 2 200600 container.2
item replace entity @s armor.legs from block 200600 2 200600 container.1
item replace entity @s armor.feet from block 200600 2 200600 container.0