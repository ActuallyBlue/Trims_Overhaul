execute at @s[advancements={blue:tr/display/ender_eye=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/ender_eye
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/ender_eye
tag @s add blue.tr.mats.eye
tag @s add blue.tr.mats.set