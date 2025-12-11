execute store result score #.temp blue.misc run random value 2..12
execute if score #.temp blue.misc matches 2 run return run effect give @s weakness 3 0
execute if score #.temp blue.misc matches 3 run return run effect give @s mining_fatigue 3 0
execute if score #.temp blue.misc matches 4 run return run effect give @s slowness 3 0
execute if score #.temp blue.misc matches 5 run return run effect give @s unluck 3 0
execute if score #.temp blue.misc matches 6 run return run effect give @s blindness 3 0
execute if score #.temp blue.misc matches 7 run return run effect give @s hunger 5 1
execute if score #.temp blue.misc matches 8 run return run effect give @s poison 3 0
execute if score #.temp blue.misc matches 9 run return run effect give @s wither 3 0
execute if score #.temp blue.misc matches 10 run return run effect give @s levitation 3 0
execute if score #.temp blue.misc matches 11 run return run effect give @s slow_falling 3 0
execute if score #.temp blue.misc matches 12 run return run effect give @s glowing 3 0
execute if score #.temp blue.misc matches 13 run effect give @s nausea 3 0