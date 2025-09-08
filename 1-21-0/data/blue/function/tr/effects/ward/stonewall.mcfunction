scoreboard players operation #.ward.stonewall blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run attribute @s generic.armor modifier add blue:tr.trim 6 add_value
execute if score #.temp blue.misc matches 1 run attribute @s generic.explosion_knockback_resistance modifier add blue:tr.trim 0.4 add_value
execute if score #.temp blue.misc matches 1 run return run attribute @s generic.knockback_resistance modifier add blue:tr.trim 0.3 add_value
attribute @s generic.explosion_knockback_resistance modifier remove blue:tr.trim
attribute @s generic.knockback_resistance modifier remove blue:tr.trim
attribute @s generic.armor modifier remove blue:tr.trim