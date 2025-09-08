execute if block ^ ^ ^ water if score #.flow.out_water blue.misc matches 2 store success score #.flow.out_water blue.misc run effect give @s water_breathing 4 0
execute if block ^ ^ ^ air run scoreboard players set #.flow.out_water blue.misc 2
effect give @s wind_charged 2 50 true