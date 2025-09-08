execute at @s[advancements={blue:tr/actual/powder=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/powder
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/actual/powder
tag @s add blue.tr.mats.powder
tag @s add blue.tr.mats.set