execute at @s positioned ^ ^ ^5 if entity @a[distance=..6,tag=!blue.tr.eye,limit=1] run return fail
execute at b163102f-0-1-0-1 if entity @s[distance=..30] run return fail
$execute facing $(x) $(y) $(z) run function blue:tr/effects/eye/alarm/pre_trace