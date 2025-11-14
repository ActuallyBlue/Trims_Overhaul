execute if score #.eye_stored blue.misc matches 1 run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if score #.eye_stored blue.misc matches 2 run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 2
execute if score #.eye_stored blue.misc matches 3 run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 3
execute if score #.eye_stored blue.misc matches 4.. run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 4
tellraw @s [{"translate":"Eye","color":"#1F8A46"},{"translate":"blue.tr.returned","fallback":" template(s) have been returned to you","color":"gray"}]
advancement grant @s[advancements={blue:tr/display/guides/protection=false}] only blue:tr/display/guides/protection
playsound entity.enderman.teleport player @s ~ ~-2 ~ 0.8 0.75
scoreboard players reset #.eye_stored blue.misc
particle portal ~ ~0.5 ~ 0.05 0.5 0.05 0.3 16