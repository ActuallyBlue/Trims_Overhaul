execute if score #.tr.flow_toggle blue.config matches 2 run return run tellraw @s {"translate":"blue.tr.empowerment","fallback":"- %s empowerment is disabled on this server.","color":"gray","with":[{"translate":"Flow","extra":["'s"],"color":"#85B2C5"}]}
execute at @s[advancements={blue:tr/display/wind=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/wind
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/wind
tag @s add blue.tr.mats.wind
tag @s add blue.tr.mats.set