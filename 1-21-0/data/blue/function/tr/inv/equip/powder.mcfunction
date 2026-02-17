execute if score #.tr.shaper_toggle blue.config matches 2 run return run tellraw @s {"translate":"blue.tr.empowerment","fallback":"- %s empowerment is disabled on this server.","color":"gray","with":[{"translate":"Shaper","extra":["'s"],"color":"#8F8F8F"}]}
execute at @s[advancements={blue:tr/display/powder=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/powder
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/powder
tag @s add blue.tr.mats.powder
tag @s add blue.tr.mats.set