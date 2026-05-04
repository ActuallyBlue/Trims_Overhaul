scoreboard players operation #.tide.technique blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 anchored eyes rotated ~ 0 run particle enchanted_hit ^-0.4 ^-0.6 ^0.4 0.15 0.2 0.15 0 8
execute if score #.temp blue.misc matches 1 run return run attribute @s generic.attack_damage modifier add b163102f-0-5-0-1 "blue:tr.trim" 1.5 add_value
attribute @s generic.attack_damage modifier remove b163102f-0-5-0-1