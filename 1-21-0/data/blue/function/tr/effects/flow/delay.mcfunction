execute store success score #.flow.chamber blue.misc if predicate {"condition":"location_check","predicate":{"structures":"trial_chambers"}}
execute unless score #.flow.chamber blue.misc matches 1 if entity @s[tag=blue.tr.dragon_egg] run scoreboard players set #.flow.chamber blue.misc 1
execute if block ^ ^ ^ water if score #.flow.out_water blue.misc matches 2 store success score #.flow.out_water blue.misc run effect give @s water_breathing 4 0
execute if block ^ ^ ^ air run scoreboard players set #.flow.out_water blue.misc 2
effect give @s wind_charged 2 50 true