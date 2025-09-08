scoreboard players add @s blue.misc 1
execute unless score @s blue.misc matches 60.. if block ~ ~ ~ #blue:trims/copper run return fail
execute as @a[tag=blue.tr.bolt,limit=1] positioned ~ ~-0.5 ~ facing entity @s feet run function blue:tr/effects/bolt/conduct/player/start
execute if block ~ ~ ~ #blue:trims/copper run fill ~ ~ ~ ~ ~ ~ air destroy
particle wax_on ~ ~ ~ 0.4 0.4 0.4 0.1 12
kill