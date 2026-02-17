damage @s[scores={blue.health=..3}] 30 blue:tr/pufferfish by @a[scores={blue.tr.current_trim=1},limit=1]
execute if score @s blue.health matches ..3 run tag @a[scores={blue.tr.current_trim=1},limit=1] add blue.tr.coast_propel
scoreboard players reset #.temp blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
tp ~ ~1000 ~
execute facing entity @a[tag=blue.tr.coast,limit=1] feet positioned ^ ^ ^-2 positioned ~ ~1001.5 ~ summon end_crystal run damage @s 1
tp ~ ~ ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
tag @s remove blue.tr.coast_delay