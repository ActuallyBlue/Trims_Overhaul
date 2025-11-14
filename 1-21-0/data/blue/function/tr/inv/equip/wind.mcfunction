execute at @s[advancements={blue:tr/display/wind=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/wind
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/wind
tag @s add blue.tr.mats.wind
tag @s add blue.tr.mats.set