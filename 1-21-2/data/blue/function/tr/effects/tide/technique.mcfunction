scoreboard players operation #.tide.technique blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run attribute @s attack_damage modifier add blue:tr.trim 1.5 add_value
attribute @s attack_damage modifier remove blue:tr.trim