execute as @e[type=warden,distance=..10,team=blue.tr.silence] at @s run function blue:tr/effects/silence/emp/wardencheck
advancement revoke @s only blue:tr/hit_warden
scoreboard players reset #.temp blue.misc