execute if entity @s[tag=blue.tr.add_trail] run function blue:tr/effects/snout/gamble/throw/trail
execute if entity @s[tag=blue.tr.air_toggle] store result entity @s Air int 1 run scoreboard players get #.20 blue.misc
execute unless predicate blue:shared/on_ground run return fail
summon text_display ~ ~ ~ {Tags:["blue.tr.gamble.display"],alignment:center,text:'{"text":"#","obfuscated":true,"color":"gold"}',billboard:center,transformation:{scale:[3,3,3],translation:[0f,0.5f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
ride @n[type=text_display,tag=blue.tr.gamble.display] mount @s
schedule function blue:tr/effects/snout/gamble/item/display 1t
data merge entity @s {PickupDelay:32767s,Age:-32768s,Health:32767s}
particle wax_on ~ ~0.25 ~ 0 0 0 4 10
tag @s add blue.tr.ground