execute at @s[advancements={blue:tr/display/shard=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/shard
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/shard
tag @s add blue.tr.mats.shard
tag @s add blue.tr.mats.set