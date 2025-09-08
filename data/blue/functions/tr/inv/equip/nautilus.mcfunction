execute at @s[advancements={blue:tr/actual/nautilus=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/nautilus
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/actual/nautilus
tag @s add blue.tr.mats.naut
tag @s add blue.tr.mats.set