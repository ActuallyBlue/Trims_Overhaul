execute as @a[tag=blue.tr.transfer_user] run function blue:tr/inv/transfer/target/armor/user
setblock 200600 2 200600 barrel
item replace block 200600 2 200600 container.7 from entity @s armor.head
item replace block 200600 2 200600 container.6 from entity @s armor.chest
item replace block 200600 2 200600 container.5 from entity @s armor.legs
item replace block 200600 2 200600 container.4 from entity @s armor.feet
data modify storage blue:data trims.transfer set from block 200600 2 200600 Items
execute store result score #.pieces blue.misc run data get storage blue:data trims.transfer