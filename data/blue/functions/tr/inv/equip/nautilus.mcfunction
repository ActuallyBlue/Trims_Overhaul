execute if score #.tr.wild_toggle blue.config matches 2 run tellraw @s {"translate":"blue.tr.empowerment","fallback":"- %s empowerment is disabled on this server.","color":"gray","with":[{"translate":"Wild","extra":["'s"],"color":"#00D529"}]}
execute if score #.tr.wild_toggle blue.config matches 2 run return 0
execute at @s[advancements={blue:tr/display/nautilus=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/nautilus
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/nautilus
tag @s add blue.tr.mats.naut
tag @s add blue.tr.mats.set