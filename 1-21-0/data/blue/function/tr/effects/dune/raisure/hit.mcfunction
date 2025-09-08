execute if score @s blue.tr.current_trim matches 2 if score #.temp blue.misc matches 0 run function blue:tr/effects/dune/sandstorm/create
execute if score @s blue.tr.current_trim matches 2 run return fail
playsound item.brush.brushing.sand.complete player @a ~ ~ ~ 1.5 1
damage @s 16 falling_block by @a[tag=blue.tr.dune,limit=1]
scoreboard players set #.temp blue.misc -592
effect give @s slowness 2 0 true