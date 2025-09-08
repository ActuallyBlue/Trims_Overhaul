execute on origin if score @s blue.tr.current_trim matches 6 run scoreboard players set #.temp blue.misc -1226
execute if score #.temp blue.misc matches -1226 run tag @s add blue.tr.rib_checked
execute if score #.temp blue.misc matches -1226 run return 0
particle small_flame ~ ~ ~ 0.075 0.075 0.075 0.02 12
playsound block.fire.extinguish player @a ~ ~ ~ 1 2
kill