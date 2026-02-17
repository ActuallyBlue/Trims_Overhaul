execute if score #.tr.tide_toggle blue.config matches 2 run return run tellraw @s {"translate":"blue.tr.empowerment","fallback":"- %s empowerment is disabled on this server.","color":"gray","with":[{"translate":"Tide","extra":["'s"],"color":"#199ADD"}]}
execute at @s[advancements={blue:tr/display/heart=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/heart
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/heart
tag @s add blue.tr.mats.heart
tag @s add blue.tr.mats.set