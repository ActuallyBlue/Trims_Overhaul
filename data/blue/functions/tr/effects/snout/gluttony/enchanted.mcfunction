kill @e[tag=blue.tr.gamble.apple,type=text_display]
data modify storage blue:trims display set value []
function blue:tr/effects/snout/gluttony/instant
execute unless score #.snout.instant_reduction blue.misc matches 1.. run function blue:tr/effects/snout/gluttony/instant
execute unless score #.snout.instant_reduction blue.misc matches 2 run function blue:tr/effects/snout/gluttony/instant
data remove storage blue:trims display[-1]
execute unless score #.snout.instant_reduction blue.misc matches 2.. run scoreboard players add #.snout.instant_reduction blue.misc 1
schedule function blue:tr/effects/snout/gluttony/reduction 20s
summon text_display ~ ~2 ~ {Tags:["blue.tr.gamble.display","blue.tr.gamble.apple"],alignment:center,billboard:center,transformation:{scale:[3,3,3],translation:[0f,0.5f,0f],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}
execute positioned ~ ~2 ~ run data modify entity @e[tag=blue.tr.gamble.display,sort=nearest,limit=1,distance=..0.1,type=text_display] text set from storage blue:trims display
schedule function blue:tr/effects/snout/gluttony/kill 35t
title @s actionbar ""