attribute @s generic.attack_damage modifier remove b163102f-0-5-0-1
execute unless predicate blue:shared/in_desert run return fail
execute store success score #.temp blue.misc if predicate blue:shared/in_pyramid
execute if score #.temp blue.misc matches 0 run attribute @s generic.attack_damage modifier add b163102f-0-5-0-1 "blue:tr.trim" 1.25 add_value
execute if score #.temp blue.misc matches 0 run return run effect give @s fire_resistance 2 0 true
attribute @s generic.attack_damage modifier add b163102f-0-5-0-1 "blue:tr.trim" 2.5 add_value
effect give @s fire_resistance 4 0 true