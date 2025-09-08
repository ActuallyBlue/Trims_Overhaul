scoreboard players add @s blue.misc 1
schedule function blue:tr/effects/dune/geyser/loop 1t
execute if score @s blue.misc matches 1 at @s run tp ~ ~-4 ~
execute unless score @s blue.misc matches 30.. run return 0
execute on passengers run kill
kill