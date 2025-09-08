scoreboard players operation #.spire.origin blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run attribute @s armor modifier add blue:tr.trim 4 add_value
execute if score #.temp blue.misc matches 1 run return run attribute @s attack_damage modifier add blue:tr.trim 1.5 add_value
attribute @s attack_damage modifier remove blue:tr.trim
attribute @s armor modifier remove blue:tr.trim