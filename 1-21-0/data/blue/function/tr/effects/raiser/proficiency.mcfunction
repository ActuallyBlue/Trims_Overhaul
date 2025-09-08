attribute @s generic.movement_speed modifier remove blue:tr.trim
attribute @s generic.attack_speed modifier remove blue:tr.trim
attribute @s generic.attack_damage modifier remove blue:tr.trim
execute if entity @s[level=..20] run return fail
execute store result storage blue:data trims.temp.dmg float 0.01 store result storage blue:data trims.temp.spd float 0.001 run scoreboard players get #.temp blue.misc
execute store result score #.temp blue.misc run gamerule keepInventory
execute if score #.temp blue.misc matches 0 if score #.raiser.uncap_proficiency blue.config matches 0 if entity @s[level=100..] run data merge storage blue:data {trims:{temp:{spd:0.10,dmg:1.0}}}
execute if score #.temp blue.misc matches 1 if score #.raiser.uncap_proficiency blue.config matches 0 if entity @s[level=150..] run data merge storage blue:data {trims:{temp:{spd:0.15,dmg:1.5}}}
function blue:tr/effects/raiser/set_attributes with storage blue:data trims.temp