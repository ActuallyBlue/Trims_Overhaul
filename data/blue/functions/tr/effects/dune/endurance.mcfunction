execute store success score #.temp blue.misc if predicate blue:tr/in_monument
attribute @s generic.attack_damage modifier remove b163102f-0-5-0-1
execute unless predicate blue:tr/in_desert run return 0
execute if score #.temp blue.misc matches 0 run effect give @s fire_resistance 2 0 true
execute if score #.temp blue.misc matches 0 run attribute @s generic.attack_damage modifier add b163102f-0-5-0-1 "blue:tr.trim" 1.25 add
execute if score #.temp blue.misc matches 1 run effect give @s fire_resistance 4 0 true
execute if score #.temp blue.misc matches 1 run attribute @s generic.attack_damage modifier add b163102f-0-5-0-1 "blue:tr.trim" 2.5 add