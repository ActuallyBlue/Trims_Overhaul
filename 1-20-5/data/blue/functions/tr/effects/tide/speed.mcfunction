scoreboard players operation #.tide.speed blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run return run attribute @s generic.movement_speed modifier add b163102f-0-5-0-1 "blue:tr.trim" 0.1 add_multiplied_total
attribute @s generic.movement_speed modifier remove b163102f-0-5-0-1