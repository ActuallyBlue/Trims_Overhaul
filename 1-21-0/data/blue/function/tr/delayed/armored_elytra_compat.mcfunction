item replace entity b163102f-0-0-0-100000000 weapon from entity @s armor.chest
data modify storage blue:trims temp.elytra set from entity b163102f-0-0-0-100000000 HandItems[0]
data modify storage blue:trims temp.elytra.components."minecraft:trim" set from storage blue:trims temp.elytra.components."minecraft:bundle_contents"[0].components."minecraft:trim"
data remove storage blue:trims temp.elytra.components."minecraft:bundle_contents"[0].components."minecraft:trim"
data modify entity b163102f-0-0-0-100000000 HandItems[0] set from storage blue:trims temp.elytra
item replace entity @s armor.chest from entity b163102f-0-0-0-100000000 weapon