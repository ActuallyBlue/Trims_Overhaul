advancement grant @s[advancements={blue:tr/display/netherite=false}] only blue:tr/display/netherite
execute unless entity @s[tag=blue.tr.trim.ward] run function blue:tr/inv/mats/netherite/set
execute if entity @s[tag=blue.tr.trim.ward] run function blue:tr/inv/mats/netherite/ward
tag @s add blue.tr.mats.set