execute if score #.tr.rib_toggle blue.config matches 2 run tellraw @s {"translate":"blue.tr.empowerment","fallback":"- %s empowerment is disabled on this server.","color":"gray","with":[{"translate":"Rib","extra":["'s"],"color":"#E6484B"}]}
execute if score #.tr.rib_toggle blue.config matches 2 run return 0
execute at @s[advancements={blue:tr/display/blaze=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/blaze
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/blaze
tag @s add blue.tr.mats.blaze
tag @s add blue.tr.mats.set