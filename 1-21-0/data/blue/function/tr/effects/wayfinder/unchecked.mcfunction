execute on origin if score @s blue.tr.current_trim matches 15 run scoreboard players set #.temp blue.misc -2299
execute unless score #.temp blue.misc matches -2299 run return run tag @s add blue.tr.checked
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.grapple