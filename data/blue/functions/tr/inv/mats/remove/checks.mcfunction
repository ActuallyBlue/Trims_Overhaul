execute unless data storage blue:data trims.inventory[].components."minecraft:trim"{material:"minecraft:dragon_egg"} run tag @s[tag=blue.tr.dragon_egg] remove blue.tr.dragon_egg
execute if entity @s[tag=blue.tr.mats.head] run function blue:tr/inv/mats/remove/head
execute if entity @s[tag=blue.tr.mats.chest] run function blue:tr/inv/mats/remove/chest
execute if entity @s[tag=blue.tr.mats.legs] run function blue:tr/inv/mats/remove/legs
execute if entity @s[tag=blue.tr.mats.feet] run function blue:tr/inv/mats/remove/feet