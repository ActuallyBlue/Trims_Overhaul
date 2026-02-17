item replace entity b163102f-0-0-0-100000000 weapon from entity @s weapon
data modify storage blue:trims item set from entity b163102f-0-0-0-100000000 HandItems[0].id
execute if score #.temp blue.misc matches -1 unless data storage blue:trims {item:"minecraft:wheat_seeds"} run scoreboard players set #.temp blue.misc 0
execute if score #.temp blue.misc matches -1 run item modify entity @s[gamemode=!creative] weapon blue:shared/reduce_count
execute if score #.temp blue.misc matches -1 run setblock ~ ~ ~ wheat
execute if score #.temp blue.misc matches -2 unless data storage blue:trims {item:"minecraft:potato"} run scoreboard players set #.temp blue.misc 0
execute if score #.temp blue.misc matches -2 run item modify entity @s[gamemode=!creative] weapon blue:shared/reduce_count
execute if score #.temp blue.misc matches -2 run setblock ~ ~ ~ potatoes
execute if score #.temp blue.misc matches -3 unless data storage blue:trims {item:"minecraft:carrot"} run scoreboard players set #.temp blue.misc 0
execute if score #.temp blue.misc matches -3 run item modify entity @s[gamemode=!creative] weapon blue:shared/reduce_count
execute if score #.temp blue.misc matches -3 run setblock ~ ~ ~ carrots
execute if score #.temp blue.misc matches -4 unless data storage blue:trims {item:"minecraft:beetroot_seeds"} run scoreboard players set #.temp blue.misc 0
execute if score #.temp blue.misc matches -4 run item modify entity @s[gamemode=!creative] weapon blue:shared/reduce_count
execute if score #.temp blue.misc matches -4 run setblock ~ ~ ~ beetroots
execute align xyz run particle composter ~0.5 ~0.1 ~0.5 0.25 0.1 0.25 0 3