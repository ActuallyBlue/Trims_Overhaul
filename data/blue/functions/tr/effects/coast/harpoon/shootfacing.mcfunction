execute positioned 0.0 0 0.0 positioned ^ ^ ^1.1 summon marker run function blue:shared/shootfacing
data modify entity @s Motion set from storage blue:shared Pos
execute store result score #.temp blue.misc run data get entity @s Health
execute unless score #.temp blue.misc matches ..8 run return 0
damage @s 40 blue:tr/pufferfish by @a[scores={blue.tr.current_trim=1},limit=1]
tag @a[scores={blue.tr.current_trim=1},limit=1] add blue.tr.coast_propel