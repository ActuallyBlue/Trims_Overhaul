execute at @s[advancements={blue:tr/actual/star=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/star
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/actual/star
tag @s add blue.tr.mats.star
tag @s add blue.tr.mats.set