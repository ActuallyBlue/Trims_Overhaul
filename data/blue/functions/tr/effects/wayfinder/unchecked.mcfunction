execute on origin if entity @s[tag=blue.tr.wayfinder] run scoreboard players set #.temp blue.misc -2299
execute unless score #.temp blue.misc matches -2299 run tag @s add blue.tr.checked
execute unless score #.temp blue.misc matches -2299 run return 0
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.grapple