attribute @s attack_damage modifier remove blue:tr.trim
execute unless predicate {"condition":"entity_properties","entity":"this","predicate":{"location":{"biomes":"#blue:deserts"}}} run return fail
execute store success score #.temp blue.misc if predicate {"condition":"location_check","predicate":{"structures":"desert_pyramid"}}
execute if score #.temp blue.misc matches 0 run attribute @s attack_damage modifier add blue:tr.trim 1.25 add_value
execute if score #.temp blue.misc matches 0 run return run effect give @s fire_resistance 2 0 true
attribute @s attack_damage modifier add blue:tr.trim 2.5 add_value
effect give @s fire_resistance 4 0 true