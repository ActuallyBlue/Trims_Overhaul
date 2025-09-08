particle enchanted_hit ~ ~1 ~ 0.4 0.4 0.4 0.1 32
execute if score #.temp blue.misc matches ..800 positioned 0.0 0 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^1.2
execute if score #.temp blue.misc matches 801..1200 positioned 0.0 0 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^1.6
execute if score #.temp blue.misc matches 1201..1600 positioned 0.0 0 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^2
execute if score #.temp blue.misc matches 1601..2000 positioned 0.0 0 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^2.4
execute if score #.temp blue.misc matches 2001.. positioned 0.0 0 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^3
execute if score #.temp blue.misc matches ..800 run damage @s[type=!#blue:tr/peaceful] 4 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 801..1200 run damage @s[type=!#blue:tr/peaceful] 7 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 1201..1600 run damage @s[type=!#blue:tr/peaceful] 10 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 1601..2000 run damage @s[type=!#blue:tr/peaceful] 13 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 2001.. run damage @s[type=!#blue:tr/peaceful] 16 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches ..800 run playsound item.shield.block player @a ~ ~ ~ 1 0.8
execute if score #.temp blue.misc matches 801..1200 run playsound item.shield.block player @a ~ ~ ~ 1.25 0.75
execute if score #.temp blue.misc matches 1201..1600 run playsound item.shield.block player @a ~ ~ ~ 1.5 0.7
execute if score #.temp blue.misc matches 1601..2000 run playsound item.shield.block player @a ~ ~ ~ 1.75 0.65
execute if score #.temp blue.misc matches 2001.. run playsound item.shield.block player @a ~ ~ ~ 2 0.6
data modify entity @s Motion set from entity b163102f-0-0-0-200000000 Pos