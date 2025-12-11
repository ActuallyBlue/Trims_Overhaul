execute store success score #.temp blue.misc if predicate {"condition":"location_check","predicate":{"structures":"trial_chambers"}}
execute unless score #.temp blue.misc matches 1 if entity @s[tag=blue.tr.dragon_egg] run scoreboard players set #.temp blue.misc 1
execute if score #.temp blue.misc matches 1 run scoreboard players set #.temp blue.misc 1
attribute @s block_break_speed modifier remove blue:tr.trim
execute if items entity @s armor.head *[trim~{material:copper}] run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.chest *[trim~{material:copper}] run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.legs *[trim~{material:copper}] run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.feet *[trim~{material:copper}] run scoreboard players add #.temp blue.misc 1
execute unless score #.temp blue.misc matches 1.. run return fail
execute store result storage blue:trims temp.copper float 0.1 run scoreboard players get #.temp blue.misc
function blue:tr/effects/bolt/break_speed with storage blue:trims temp