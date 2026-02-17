scoreboard players reset #.host.sacrifice
execute at b163102f-0-11-0-1 run particle damage_indicator ~ ~1 ~ 0.6 1 0.6 0.1 5
execute as b163102f-0-11-0-1 run return run damage @s 20 blue:tr/sacrifice
particle damage_indicator ~ ~0.5 ~ 0.4 0.4 0.4 0.4 2
damage @s 2 blue:tr/sacrifice