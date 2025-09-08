scoreboard players reset #.pieces blue.misc
item replace block 200600 2 200600 container.3 from entity @s armor.head
item replace block 200600 2 200600 container.2 from entity @s armor.chest
item replace block 200600 2 200600 container.1 from entity @s armor.legs
item replace block 200600 2 200600 container.0 from entity @s armor.feet
data modify storage blue:data trims.transfer set from block 200600 2 200600 Items
execute unless data storage blue:data trims.transfer.tag.Trim store result score #.pieces blue.misc run data get storage blue:data trims.transfer