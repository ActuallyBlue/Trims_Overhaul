execute unless entity @s[tag=blue.tr.grapple] run function blue:tr/effects/wayfinder/unchecked
execute unless entity @s[tag=blue.tr.grapple] run return 0
particle enchant
execute if block ~ ~-0.5 ~ #blue:trims/passable if block ~0.5 ~ ~ #blue:trims/passable if block ~-0.5 ~ ~ #blue:trims/passable if block ~ ~ ~0.5 #blue:trims/passable if block ~ ~ ~-0.5 #blue:trims/passable if block ~ ~0.5 ~ #blue:trims/passable if block ~ ~0.5 ~ #blue:trims/passable run return 0
execute at @a[tag=blue.tr.wayfinder,limit=1] positioned ~ ~-0.5 ~ facing entity @s eyes on origin run function blue:tr/effects/wayfinder/launch
playsound entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 0.5
playsound entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 0.5
particle crit ~ ~ ~ 0.1 0.1 0.1 0.2 12
kill