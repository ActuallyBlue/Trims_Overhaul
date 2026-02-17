particle enchanted_hit ~ ~1 ~ 0.4 0.4 0.4 0.1 32
execute if score #.temp blue.misc matches ..800 positioned 0.0 0 0.0 positioned ^ ^ ^1.2 summon marker run function blue:shared/shootfacing
execute if score #.temp blue.misc matches 801..1200 positioned 0.0 0 0.0 positioned ^ ^ ^1.6 summon marker run function blue:shared/shootfacing
execute if score #.temp blue.misc matches 1201..1600 positioned 0.0 0 0.0 positioned ^ ^ ^2 summon marker run function blue:shared/shootfacing
execute if score #.temp blue.misc matches 1601..2000 positioned 0.0 0 0.0 positioned ^ ^ ^2.4 summon marker run function blue:shared/shootfacing
execute if score #.temp blue.misc matches 2001.. positioned 0.0 0 0.0 positioned ^ ^ ^3 summon marker run function blue:shared/shootfacing
execute if score #.temp blue.misc matches ..800 run damage @s[type=!#blue:shared/peaceful] 4 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 801..1200 run damage @s[type=!#blue:shared/peaceful] 7 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 1201..1600 run damage @s[type=!#blue:shared/peaceful] 10 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 1601..2000 run damage @s[type=!#blue:shared/peaceful] 13 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 2001.. run damage @s[type=!#blue:shared/peaceful] 16 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches ..800 run playsound item.shield.block player @a ~ ~ ~ 1 0.8
execute if score #.temp blue.misc matches 801..1200 run playsound item.shield.block player @a ~ ~ ~ 1.25 0.75
execute if score #.temp blue.misc matches 1201..1600 run playsound item.shield.block player @a ~ ~ ~ 1.5 0.7
execute if score #.temp blue.misc matches 1601..2000 run playsound item.shield.block player @a ~ ~ ~ 1.75 0.65
execute if score #.temp blue.misc matches 2001.. run playsound item.shield.block player @a ~ ~ ~ 2 0.6
data modify entity @s Motion set from storage blue:shared Pos