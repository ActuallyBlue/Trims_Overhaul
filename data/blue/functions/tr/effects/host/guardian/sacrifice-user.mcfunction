execute if entity b163102f-0-11-0-1 run schedule function blue:tr/effects/host/guardian/sacrifice-user 3t
execute store success score #.temp blue.misc run advancement revoke @a[scores={blue.tr.current_trim=4},limit=1] only blue:tr/tags heavy_hit
execute if score #.temp blue.misc matches 1 run scoreboard players add #.host.sacrifice blue.misc 1
execute if score #.host.sacrifice blue.misc matches 2.. as @a[scores={blue.tr.current_trim=4},limit=1] at @s run function blue:tr/effects/host/sacrifice