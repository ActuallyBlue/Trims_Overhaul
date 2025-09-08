item replace block 200600 2 200600 container.3 from entity @s armor.head
item replace block 200600 2 200600 container.2 from entity @s armor.chest
item replace block 200600 2 200600 container.1 from entity @s armor.legs
item replace block 200600 2 200600 container.0 from entity @s armor.feet
data remove block 200600 2 200600 Items[].tag.Trim
item replace entity @s armor.head from block 200600 2 200600 container.3
item replace entity @s armor.chest from block 200600 2 200600 container.2
item replace entity @s armor.legs from block 200600 2 200600 container.1
item replace entity @s armor.feet from block 200600 2 200600 container.0