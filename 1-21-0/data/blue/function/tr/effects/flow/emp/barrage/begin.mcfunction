scoreboard players set #.flow.barrage_time blue.misc 1
execute store result score #.temp blue.misc run data get entity @s Item.count
scoreboard players remove #.temp blue.misc 60
execute on origin run loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"wind_charge","functions":[{"function":"set_count","count":{"type":"score","target":{"type":"fixed","name":"#.temp"},"score":"blue.misc"}}]}]}]}
kill