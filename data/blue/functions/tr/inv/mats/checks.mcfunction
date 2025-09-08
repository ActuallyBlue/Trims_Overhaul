data modify storage blue:data trims.armor.head{material:"minecraft:dragon_egg"} set from storage blue:data trims.armor.feet
data modify storage blue:data trims.armor.chest{material:"minecraft:dragon_egg"} set from storage blue:data trims.armor.head
data modify storage blue:data trims.armor.legs{material:"minecraft:dragon_egg"} set from storage blue:data trims.armor.chest
data modify storage blue:data trims.armor.feet{material:"minecraft:dragon_egg"} set from storage blue:data trims.armor.legs
execute if data storage blue:data trims.armor{feet:{material:"minecraft:netherite"},legs:{material:"minecraft:netherite"},chest:{material:"minecraft:netherite"},head:{material:"minecraft:netherite"}} run function blue:tr/inv/mats/netherite
execute if data storage blue:data trims.armor{feet:{material:"minecraft:quartz"},legs:{material:"minecraft:quartz"},chest:{material:"minecraft:quartz"},head:{material:"minecraft:quartz"}} run function blue:tr/inv/mats/quartz
execute if data storage blue:data trims.armor{feet:{material:"minecraft:lapis"},legs:{material:"minecraft:lapis"},chest:{material:"minecraft:lapis"},head:{material:"minecraft:lapis"}} run function blue:tr/inv/mats/lapis
execute if data storage blue:data trims.armor{feet:{material:"minecraft:diamond"},legs:{material:"minecraft:diamond"},chest:{material:"minecraft:diamond"},head:{material:"minecraft:diamond"}} run function blue:tr/inv/mats/diamond
execute if data storage blue:data trims.armor{feet:{material:"minecraft:iron"},legs:{material:"minecraft:iron"},chest:{material:"minecraft:iron"},head:{material:"minecraft:iron"}} run function blue:tr/inv/mats/iron
execute if data storage blue:data trims.armor{feet:{material:"minecraft:gold"},legs:{material:"minecraft:gold"},chest:{material:"minecraft:gold"},head:{material:"minecraft:gold"}} run function blue:tr/inv/mats/gold
execute if data storage blue:data trims.armor{feet:{material:"minecraft:redstone"},legs:{material:"minecraft:redstone"},chest:{material:"minecraft:redstone"},head:{material:"minecraft:redstone"}} run function blue:tr/inv/mats/redstone
execute if data storage blue:data trims.armor{feet:{material:"minecraft:copper"},legs:{material:"minecraft:copper"},chest:{material:"minecraft:copper"},head:{material:"minecraft:copper"}} run function blue:tr/inv/mats/copper
execute if data storage blue:data trims.armor{feet:{material:"minecraft:emerald"},legs:{material:"minecraft:emerald"},chest:{material:"minecraft:emerald"},head:{material:"minecraft:emerald"}} run function blue:tr/inv/mats/emerald
execute if data storage blue:data trims.armor{feet:{material:"minecraft:amethyst"},legs:{material:"minecraft:amethyst"},chest:{material:"minecraft:amethyst"},head:{material:"minecraft:amethyst"}} at @s run function blue:tr/inv/mats/amethyst
execute if entity @s[tag=blue.tr.mats.set] run return 0
execute if data storage blue:data trims.armor.head run function blue:tr/inv/mats/head
execute if data storage blue:data trims.armor.chest run function blue:tr/inv/mats/chest
execute if data storage blue:data trims.armor.legs run function blue:tr/inv/mats/legs
execute if data storage blue:data trims.armor.feet run function blue:tr/inv/mats/feet