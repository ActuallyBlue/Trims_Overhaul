data modify storage blue:trims armor.head{material:"minecraft:dragon_egg"} set from storage blue:trims armor.feet
data modify storage blue:trims armor.chest{material:"minecraft:dragon_egg"} set from storage blue:trims armor.head
data modify storage blue:trims armor.legs{material:"minecraft:dragon_egg"} set from storage blue:trims armor.chest
data modify storage blue:trims armor.feet{material:"minecraft:dragon_egg"} set from storage blue:trims armor.legs
execute if score #.tr.egg_bonus blue.config matches 1 run tag @s add blue.tr.dragon_egg
data modify storage blue:trims armor.has_egg set value 1b