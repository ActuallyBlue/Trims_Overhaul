execute at @s[advancements={blue:tr/tags={unlocked_coast=false}}] run function blue:tr/inv/templates/unlock/coast
execute if score #.tr.template_clearing blue.config matches 0 run return 0
execute store result score #.clear_temp blue.misc run clear @s coast_armor_trim_smithing_template{blue:trim}
clear @s coast_armor_trim_smithing_template
scoreboard players operation #.coast_stored blue.misc += #.clear_temp blue.misc
execute if score #.coast_stored blue.misc matches 1 run give @a[tag=blue.tr.coast,limit=1] coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if score #.coast_stored blue.misc matches 2 run give @a[tag=blue.tr.coast,limit=1] coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 2
execute if score #.coast_stored blue.misc matches 3 run give @a[tag=blue.tr.coast,limit=1] coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 3
execute if score #.coast_stored blue.misc matches 4.. run give @a[tag=blue.tr.coast,limit=1] coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 4
execute if entity @a[tag=blue.tr.coast,limit=1] run scoreboard players reset #.coast_stored blue.misc
scoreboard players reset #.clear_temp blue.misc