execute if score #.tr.spire_toggle blue.config matches 2 run tellraw @s {"translate":"blue.tr.empowerment","fallback":"- %s empowerment is disabled on this server.","color":"gray","with":[{"translate":"Spire","extra":["'s"],"color":"#BE20C7"}]}
execute if score #.tr.spire_toggle blue.config matches 2 run return 0
execute at @s[advancements={blue:tr/display/shulker=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/shulker
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/shulker
tag @s add blue.tr.mats.shulker
tag @s add blue.tr.mats.set