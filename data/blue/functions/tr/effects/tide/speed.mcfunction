execute unless score #.tide.in_rain blue.misc matches 1 run attribute @s generic.movement_speed modifier add b163102f-0-5-0-1 "blue:tr.trim" 0.1 multiply
execute unless score #.tide.in_rain blue.misc matches 1 run return 0
attribute @s generic.movement_speed modifier remove b163102f-0-5-0-1
scoreboard players reset #.tide.in_rain blue.misc