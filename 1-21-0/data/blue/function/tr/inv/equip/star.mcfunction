execute if score #.tr.wayfinder_toggle blue.config matches 2 run return run tellraw @s {"translate":"blue.tr.empowerment","fallback":"- %s empowerment is disabled on this server.","color":"gray","with":[{"translate":"Wayfinder","extra":["'s"],"color":"#F1FFC8"}]}
execute at @s[advancements={blue:tr/display/star=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/star
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/star
tag @s add blue.tr.mats.star
tag @s add blue.tr.mats.set