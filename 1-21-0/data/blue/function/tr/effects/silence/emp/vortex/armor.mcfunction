attribute @s generic.armor modifier add blue:tr.trim -0.1 add_multiplied_total
execute if score #.silence.reduce_armor blue.misc matches 1.. run return fail
attribute @s generic.armor modifier remove blue:tr.trim