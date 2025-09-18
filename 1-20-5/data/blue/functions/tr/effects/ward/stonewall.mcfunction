scoreboard players operation #.ward.stonewall blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run attribute @s generic.armor modifier add b163102f-0-5-0-1 "blue:tr.trim" 6 add_value
execute if score #.temp blue.misc matches 1 run return run attribute @s generic.knockback_resistance modifier add b163102f-0-5-0-1 "blue:tr.trim" 0.3 add_value
attribute @s generic.knockback_resistance modifier remove b163102f-0-5-0-1
attribute @s generic.armor modifier remove b163102f-0-5-0-1