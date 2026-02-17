execute store result score #.temp blue.misc if items entity @s armor.* *[trim~{material:copper}]
execute unless entity @s[tag=blue.tr.dragon_egg] if predicate {"condition":"location_check","predicate":{"structures":"trial_chambers"}} run scoreboard players add #.temp blue.misc 2
execute if entity @s[tag=blue.tr.dragon_egg] run scoreboard players add #.temp blue.misc 2
attribute @s player.block_break_speed modifier remove blue:tr.trim
execute store result score #.temp0 blue.misc if items entity @s armor.* #blue:tr/copper
scoreboard players operation #.temp blue.misc += #.temp0 blue.misc
execute store result score #.temp0 blue.misc if items entity @s weapon.* #blue:tr/copper
scoreboard players operation #.temp blue.misc += #.temp0 blue.misc
execute unless score #.temp blue.misc matches 1.. run return fail
execute store result storage blue:trims temp.copper float 0.1 run scoreboard players get #.temp blue.misc
function blue:tr/effects/bolt/charge_macro with storage blue:trims temp