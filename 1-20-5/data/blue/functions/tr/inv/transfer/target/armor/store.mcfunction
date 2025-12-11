setblock 200600 2 200600 barrel{}
item replace block 200600 2 200600 container.7 from entity @s armor.head
item replace block 200600 2 200600 container.6 from entity @s armor.chest
item replace block 200600 2 200600 container.5 from entity @s armor.legs
item replace block 200600 2 200600 container.4 from entity @s armor.feet
data modify storage blue:trims transfer set from block 200600 2 200600 Items
execute store result score #.temp0 blue.misc run data get storage blue:trims transfer
execute store result score #.temp blue.misc if data storage blue:trims transfer[{components:{"minecraft:trim":{}}}]