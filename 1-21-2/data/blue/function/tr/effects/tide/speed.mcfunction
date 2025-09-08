scoreboard players operation #.tide.speed blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run return run attribute @s movement_speed modifier add blue:tr.trim 0.1 add_multiplied_total
attribute @s movement_speed modifier remove blue:tr.trim