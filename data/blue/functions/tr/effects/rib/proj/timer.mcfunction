execute if entity b163102f-0-c-0-1 run schedule function blue:tr/effects/rib/proj/timer 1t
execute as b163102f-0-d-0-1 unless predicate blue:shared/has_vehicle at @s run function blue:tr/effects/rib/proj/impact
scoreboard players add b163102f-0-c-0-1 blue.misc 1
execute if score b163102f-0-c-0-1 blue.misc matches 40.. run kill