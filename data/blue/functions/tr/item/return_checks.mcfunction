scoreboard players add @s blue.misc 1
execute if score @s[tag=!blue.tr.armor] blue.misc matches 2.. run function blue:tr/item/template_return
execute at @s[tag=blue.tr.armor,scores={blue.misc=2..}] run function blue:tr/item/armor_return