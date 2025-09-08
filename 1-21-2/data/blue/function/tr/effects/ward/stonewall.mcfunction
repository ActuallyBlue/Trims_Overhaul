scoreboard players operation #.ward.stonewall blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run attribute @s armor modifier add blue:tr.trim 6 add_value
execute if score #.temp blue.misc matches 1 run attribute @s explosion_knockback_resistance modifier add blue:tr.trim 0.4 add_value
execute if score #.temp blue.misc matches 1 run return run attribute @s knockback_resistance modifier add blue:tr.trim 0.3 add_value
attribute @s explosion_knockback_resistance modifier remove blue:tr.trim
attribute @s knockback_resistance modifier remove blue:tr.trim
attribute @s armor modifier remove blue:tr.trim