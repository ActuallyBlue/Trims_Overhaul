data modify storage blue:data trims.armor.head{material:"minecraft:dragon_egg"} set from storage blue:data trims.armor.feet
data modify storage blue:data trims.armor.chest{material:"minecraft:dragon_egg"} set from storage blue:data trims.armor.head
data modify storage blue:data trims.armor.legs{material:"minecraft:dragon_egg"} set from storage blue:data trims.armor.chest
data modify storage blue:data trims.armor.feet{material:"minecraft:dragon_egg"} set from storage blue:data trims.armor.legs
execute if score #.tr.egg_bonus blue.config matches 1 run tag @s add blue.tr.dragon_egg
data modify storage blue:data trims.armor.has_egg set value 1b