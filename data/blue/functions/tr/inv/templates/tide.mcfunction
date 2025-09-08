execute at @s[advancements={blue:tr/tags={unlocked_tide=false}}] run function blue:tr/inv/templates/unlock/tide
execute if score #.tr.template_clearing blue.config matches 0 run return 0
execute store result score #.clear_temp blue.misc run clear @s tide_armor_trim_smithing_template{blue:trim}
clear @s tide_armor_trim_smithing_template
scoreboard players operation #.tide_stored blue.misc += #.clear_temp blue.misc
execute if score #.tide_stored blue.misc matches 1 run give @a[tag=blue.tr.tide,limit=1] tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if score #.tide_stored blue.misc matches 2 run give @a[tag=blue.tr.tide,limit=1] tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 2
execute if score #.tide_stored blue.misc matches 3 run give @a[tag=blue.tr.tide,limit=1] tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 3
execute if score #.tide_stored blue.misc matches 4.. run give @a[tag=blue.tr.tide,limit=1] tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 4
execute if entity @a[tag=blue.tr.tide,limit=1] run scoreboard players reset #.tide_stored blue.misc
scoreboard players reset #.clear_temp blue.misc