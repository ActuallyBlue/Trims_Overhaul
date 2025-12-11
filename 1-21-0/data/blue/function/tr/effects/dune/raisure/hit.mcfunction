execute if score @s blue.tr.current_trim matches 2 run return run execute if score #.temp blue.misc matches 0 run function blue:tr/effects/dune/sandstorm/create
execute at @a[tag=blue.tr.dune,limit=1] store success score #.temp blue.misc if biome ~ ~ ~ #blue:sandy
execute unless score #.temp blue.misc matches 1 store success score #.temp blue.misc if entity @a[tag=blue.tr.dune,tag=blue.tr.dragon_egg,limit=1]
execute if score #.temp blue.misc matches 0 run damage @s 16 falling_block by @a[tag=blue.tr.dune,limit=1]
execute if score #.temp blue.misc matches 1 run damage @s 22 falling_block by @a[tag=blue.tr.dune,limit=1]
scoreboard players set #.temp blue.misc -592
effect give @s slowness 2 0 true