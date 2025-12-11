execute if entity b163102f-0-c-0-1 run schedule function blue:tr/effects/rib/skull/timer 1t
execute as b163102f-0-d-0-1 unless predicate blue:shared/has_vehicle at @s run function blue:tr/effects/rib/skull/impact
execute store result entity b163102f-0-c-0-1 Air byte 1 run scoreboard players get #.20 blue.misc
scoreboard players add b163102f-0-c-0-1 blue.misc 1
execute if score b163102f-0-c-0-1 blue.misc matches 40.. run kill