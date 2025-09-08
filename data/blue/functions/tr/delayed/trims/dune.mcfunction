execute if score #.dune_stored blue.misc matches 1 run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if score #.dune_stored blue.misc matches 2 run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 2
execute if score #.dune_stored blue.misc matches 3 run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 3
execute if score #.dune_stored blue.misc matches 4.. run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 4
tellraw @s [{"translate":"Dune","color":"#E7C547"},{"translate":"blue.tr.returned","fallback":" template(s) have been returned to you","color":"gray"}]
playsound entity.enderman.teleport player @s ~ ~-2 ~ 0.8 0.75
scoreboard players reset #.dune_stored blue.misc
particle portal ~ ~1 ~ 0.05 0 0.05 0.1 32