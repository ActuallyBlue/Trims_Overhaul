$setblock ~ ~ ~ $(item)
schedule function blue:tr/effects/bolt/loop 1t
particle electric_spark ~ ~ ~ 0.35 0.35 0.35 0.1 18
execute as @e[type=marker,tag=blue.tr.bolt_block,limit=1] facing entity @s feet run return run function blue:tr/effects/bolt/conduct/start
tag @s add blue.tr.hit
execute positioned ~ ~-0.5 ~ facing entity @s feet run function blue:tr/effects/bolt/conduct/player/start
summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict"],Tags:["blue.tr.bolt_block"]}