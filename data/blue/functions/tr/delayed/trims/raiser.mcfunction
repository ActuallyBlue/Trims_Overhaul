execute if score #.raiser_stored blue.misc matches 1 run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if score #.raiser_stored blue.misc matches 2 run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 2
execute if score #.raiser_stored blue.misc matches 3 run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 3
execute if score #.raiser_stored blue.misc matches 4.. run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 4
tellraw @s [{"translate":"Raiser","color":"#95B623"},{"translate":"blue.tr.returned","fallback":" template(s) have been returned to you","color":"gray"}]
playsound entity.enderman.teleport player @s ~ ~-2 ~ 0.8 0.75
scoreboard players reset #.raiser_stored blue.misc
particle portal ~ ~1 ~ 0.05 0 0.05 0.1 32