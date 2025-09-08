execute unless score #.tide.weak_cooldown blue.misc matches 1 if data entity @s {life:0s} on origin if entity @s[tag=blue.tr.tide] run scoreboard players set #.temp blue.misc -412
execute unless score #.temp blue.misc matches -412 run return run tag @s add blue.tr.tide_checked
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.tide_owned
execute unless score #.tide.stacks blue.misc matches 2.. run return run tag @s add blue.tr.no_burst
scoreboard players remove #.tide.stacks blue.misc 2
execute as @a[tag=blue.tr.tide,limit=1] run function blue:tr/effects/tide/emp/display
schedule function blue:tr/effects/tide/emp/weak_cooldown 20t
scoreboard players set #.tide.weak_cooldown blue.misc 1