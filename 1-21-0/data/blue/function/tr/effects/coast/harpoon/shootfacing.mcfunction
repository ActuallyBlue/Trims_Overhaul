execute in overworld positioned 0.0 0.0 0.0 run tp b163102f-0-0-0-200000000 ^ ^ ^1.1
data modify entity @s Motion set from entity b163102f-0-0-0-200000000 Pos
execute store result score #.temp blue.misc run data get entity @s Health
execute if score #.temp blue.misc matches ..8 run damage @s 40 blue:tr/pufferfish