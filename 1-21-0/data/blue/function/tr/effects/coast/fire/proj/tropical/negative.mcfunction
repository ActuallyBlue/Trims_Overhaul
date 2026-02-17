execute store result score #.temp blue.misc run random value 2..13
execute if predicate blue:r/40c run scoreboard players add #.temp blue.misc 1
execute if score #.temp blue.misc matches 2 run return run effect give @s nausea 9 0
execute if score #.temp blue.misc matches 3 run return run effect give @s mining_fatigue 9 0
execute if score #.temp blue.misc matches 4 run return run effect give @s slowness 9 0
execute if score #.temp blue.misc matches 5 run return run effect give @s unluck 9 0
execute if score #.temp blue.misc matches 6 run return run effect give @s blindness 9 0
execute if score #.temp blue.misc matches 7 run return run effect give @s hunger 8 1
execute if score #.temp blue.misc matches 8 run return run effect give @s poison 9 0
execute if score #.temp blue.misc matches 9 run return run effect give @s wither 9 0
execute if score #.temp blue.misc matches 10 run return run effect give @s levitation 9 0
execute if score #.temp blue.misc matches 11 run return run effect give @s slow_falling 9 0
execute if score #.temp blue.misc matches 12 run return run effect give @s glowing 9 0
execute if score #.temp blue.misc matches 13 run return run effect give @s weakness 9 0
execute if score #.temp blue.misc matches 14 run return run effect give @s instant_damage 1 0