execute store result score #.temp blue.misc run random value 2..13
execute if predicate blue:r/40c run scoreboard players add #.temp blue.misc 1
execute if score #.temp blue.misc matches 2 run return run effect give @s luck 9 0
execute if score #.temp blue.misc matches 3 run return run effect give @s haste 9 0
execute if score #.temp blue.misc matches 4 run return run effect give @s strength 9 0
execute if score #.temp blue.misc matches 5 run return run effect give @s fire_resistance 9 0
execute if score #.temp blue.misc matches 6 run return run effect give @s regeneration 9 0
execute if score #.temp blue.misc matches 7 run return run effect give @s absorption 9 0
execute if score #.temp blue.misc matches 8 run return run effect give @s saturation 5 0
execute if score #.temp blue.misc matches 9 run return run effect give @s resistance 9 0
execute if score #.temp blue.misc matches 10 run return run effect give @s conduit_power 9 0
execute if score #.temp blue.misc matches 11 run return run effect give @s dolphins_grace 9 0
execute if score #.temp blue.misc matches 12 run return run effect give @s night_vision 9 0
execute if score #.temp blue.misc matches 13 run return run effect give @s speed 9 0
execute if score #.temp blue.misc matches 14 run effect give @s instant_health 1 0