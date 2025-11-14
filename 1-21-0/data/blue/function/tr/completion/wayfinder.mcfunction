scoreboard players operation #.temp0 blue.misc = @s blue.tr.structures
scoreboard players set @s blue.tr.structures 12
function blue:tr/completion/z/wayfinder
scoreboard players operation @s blue.tr.structures = #.temp0 blue.misc
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/cheat_wayfinder
execute if entity @s[advancements={blue:tr/has_template=true}] run function blue:tr/debug/cheat_wayfinder
execute if score #.tr.armor_ownership blue.config matches 0 if entity @s[advancements={blue:tr/has_template=false}] run tellraw @s {"translate":"blue.tr.cheat_wayfinder","fallback":" To give yourself max Wayfinder progression, you'll also need to run %s","color":"gray","with":[{"text":"/function blue:tr/debug/cheat_wayfinder","color":"white"}]}