scoreboard players operation #.flow.gravity blue.misc = #.temp blue.misc
attribute @s generic.gravity modifier remove blue:tr.trim
execute if score #.temp blue.misc matches 1 run return run attribute @s generic.gravity modifier add blue:tr.trim -0.045 add_value
attribute @s generic.gravity modifier add blue:tr.trim -0.03 add_value