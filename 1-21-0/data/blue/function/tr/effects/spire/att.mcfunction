scoreboard players operation #.spire.origin blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run attribute @s generic.armor modifier add blue:tr.trim 4 add_value
execute if score #.temp blue.misc matches 1 run return run attribute @s generic.attack_damage modifier add blue:tr.trim 1.5 add_value
attribute @s generic.attack_damage modifier remove blue:tr.trim
attribute @s generic.armor modifier remove blue:tr.trim