execute if entity @s[tag=blue.tr.add_trail] run function blue:tr/effects/snout/gamble/throw/trail
execute if entity @s[tag=blue.tr.air_toggle] store result entity @s Air byte 1 run scoreboard players get #.20 blue.misc
execute unless predicate blue:shared/on_ground run return fail
summon text_display ~ ~ ~ {Tags:["blue.tr.gamble.display"],alignment:center,text:'{"text":"#","obfuscated":true,"color":"gold"}',billboard:center,transformation:{scale:[3,3,3],translation:[0f,0.5f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
ride @n[type=text_display,tag=blue.tr.gamble.display] mount @s
schedule function blue:tr/effects/snout/gamble/item/display 1t
data merge entity @s {PickupDelay:32767s,Age:-32768s,Health:32767s}
particle wax_on ~ ~0.25 ~ 0 0 0 3 8
tag @s add blue.tr.ground
execute on origin store success score #.temp blue.misc if predicate {"condition":"location_check","predicate":{"structures":"bastion_remnant"}}
execute unless score #.temp blue.misc matches 1 on origin if entity @s[tag=blue.tr.dragon_egg] run scoreboard players set #.temp blue.misc 1
execute if score #.temp blue.misc matches 1 run scoreboard players set @s blue.misc 16