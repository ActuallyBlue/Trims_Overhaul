execute at @s[advancements={blue:tr/tags={unlocked_dune=false}}] run function blue:tr/inv/templates/unlock/dune
execute if entity @s[tag=blue.tr.dune] run return 0
execute if score #.tr.objective_type blue.config matches 3 unless score #.tr.limit_owned_trims blue.config matches 1.. if score #.tr.dune_completed blue.config matches 0 if entity @s[advancements={blue:tr/blacklist={dune=false}}] run function blue:tr/completion/dune
execute if score #.tr.objective_type blue.config matches 3 if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=false}}] if score #.tr.dune_completed blue.config matches 0 if entity @s[advancements={blue:tr/blacklist={dune=false}}] run function blue:tr/completion/dune
execute if score #.tr.template_clearing blue.config matches 0 run return 0
execute store result score #.clear_temp blue.misc run clear @s dune_armor_trim_smithing_template{blue:trim}
clear @s dune_armor_trim_smithing_template
scoreboard players operation #.dune_stored blue.misc += #.clear_temp blue.misc
execute if score #.dune_stored blue.misc matches 1 run give @a[tag=blue.tr.dune,limit=1] dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if score #.dune_stored blue.misc matches 2 run give @a[tag=blue.tr.dune,limit=1] dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 2
execute if score #.dune_stored blue.misc matches 3 run give @a[tag=blue.tr.dune,limit=1] dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 3
execute if score #.dune_stored blue.misc matches 4.. run give @a[tag=blue.tr.dune,limit=1] dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 4
execute if entity @a[tag=blue.tr.dune,limit=1] run scoreboard players reset #.dune_stored blue.misc
scoreboard players reset #.clear_temp blue.misc