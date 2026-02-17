execute as @e[distance=..10,team=blue.tr.silence,type=warden] at @s run function blue:tr/effects/silence/emp/check_hit
advancement revoke @s only blue:tr/hit_warden req
scoreboard players reset #.temp blue.misc