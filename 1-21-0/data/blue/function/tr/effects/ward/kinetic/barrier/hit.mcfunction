scoreboard players reset #.temp0 blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp0 blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp0 blue.misc -2
particle enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.1 24
gamemode creative
execute if score #.temp blue.misc matches ..800 run damage @s[type=!#blue:tr/peaceful] 4 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 801..1200 run damage @s[type=!#blue:tr/peaceful] 7 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 1201..1600 run damage @s[type=!#blue:tr/peaceful] 10 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 1601..2000 run damage @s[type=!#blue:tr/peaceful] 13 player_attack by @a[tag=blue.tr.ward,limit=1]
execute if score #.temp blue.misc matches 2001.. run damage @s[type=!#blue:tr/peaceful] 16 player_attack by @a[tag=blue.tr.ward,limit=1]
tp @s @s
tp @s ~ ~1000 ~
execute positioned ^ ^ ^-3 positioned ~ ~1001 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 801.. positioned ^ ^ ^-4 positioned ~ ~1001 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 1201.. positioned ^ ^ ^-5 positioned ~ ~1001 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 1601.. positioned ^ ^ ^-6 positioned ~ ~1001 ~ summon end_crystal run damage @s 1
execute if score #.temp blue.misc matches 2001.. positioned ^ ^ ^-7 positioned ~ ~1001 ~ summon end_crystal run damage @s 1
tp @s ~ ~ ~
execute if score #.temp0 blue.misc matches -1 run gamemode survival
execute if score #.temp0 blue.misc matches -2 run gamemode adventure
execute if score #.temp blue.misc matches ..800 run playsound item.shield.block player @a ~ ~ ~ 1 0.8
execute if score #.temp blue.misc matches 801..1200 run playsound item.shield.block player @a ~ ~ ~ 1.25 0.75
execute if score #.temp blue.misc matches 1201..1600 run playsound item.shield.block player @a ~ ~ ~ 1.5 0.7
execute if score #.temp blue.misc matches 1601..2000 run playsound item.shield.block player @a ~ ~ ~ 1.75 0.65
execute if score #.temp blue.misc matches 2001.. run playsound item.shield.block player @a ~ ~ ~ 2 0.6