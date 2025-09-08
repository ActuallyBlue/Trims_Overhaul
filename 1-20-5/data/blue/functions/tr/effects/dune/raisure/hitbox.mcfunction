execute if data entity @s attack run function blue:tr/effects/dune/raisure/toss
scoreboard players remove @s[scores={blue.misc=1..}] blue.misc 1
execute if predicate blue:shared/has_vehicle run return fail
execute positioned ~ ~-1 ~ align xyz run particle falling_dust{block_state:{Name:sand}} ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 5 32
playsound block.suspicious_sand.place player @a
kill