execute if score #.tr.eye_toggle blue.config matches 2 run tellraw @s {"translate":"blue.tr.empowerment","fallback":"- %s empowerment is disabled on this server.","color":"gray","with":[{"translate":"Eye","extra":["'s"],"color":"#1F8A46"}]}
execute if score #.tr.eye_toggle blue.config matches 2 run return 0
execute at @s[advancements={blue:tr/display/ender_eye=false},tag=!blue.tr.ignore_first] run function blue:tr/inv/equip/first/ender_eye
execute if entity @s[advancements={blue:tr/tags={tutorial_resource_pack=false}}] run function blue:tr/inv/equip/first/resource_tutorial
advancement grant @s only blue:tr/display/ender_eye
tag @s add blue.tr.mats.eye
tag @s add blue.tr.mats.set