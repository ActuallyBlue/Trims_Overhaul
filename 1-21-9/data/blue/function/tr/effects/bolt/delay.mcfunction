execute if predicate {"condition":"location_check","predicate":{"structures":"trial_chambers"}} run effect give @s haste 2 1 true
scoreboard players reset #.temp blue.misc
attribute @s block_break_speed modifier remove blue:tr.trim
execute if items entity @s armor.head *[trim~{material:copper}] run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.chest *[trim~{material:copper}] run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.legs *[trim~{material:copper}] run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.feet *[trim~{material:copper}] run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.head copper_helmet run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.chest copper_chestplate run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.legs copper_leggings run scoreboard players add #.temp blue.misc 1
execute if items entity @s armor.feet copper_boots run scoreboard players add #.temp blue.misc 1
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"items":["copper_sword","copper_axe","copper_pickaxe","copper_shovel","copper_hoe"]}}}} run scoreboard players add #.temp blue.misc 1
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"equipment":{"offhand":{"items":["copper_sword","copper_axe","copper_pickaxe","copper_shovel","copper_hoe"]}}}} run scoreboard players add #.temp blue.misc 1
execute unless score #.temp blue.misc matches 1.. run return fail
execute store result storage blue:data trims.temp.copper float 0.1 run scoreboard players get #.temp blue.misc
function blue:tr/effects/bolt/break_speed with storage blue:data trims.temp