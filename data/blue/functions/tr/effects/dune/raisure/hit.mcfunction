execute if score @s blue.tr.current_trim matches 2 if score #.temp blue.misc matches 0 positioned ~ ~0.5 ~ run function blue:tr/effects/dune/sandstorm/create
execute if score @s blue.tr.current_trim matches 2 run return 0
execute at @a[tag=blue.tr.dune,limit=1] store success score #.temp blue.misc if biome ~ ~ ~ #blue:sandy
execute unless score #.temp blue.misc matches 1 store success score #.temp blue.misc if entity @a[tag=blue.tr.dune,tag=blue.tr.dragon_egg,limit=1]
execute if score #.temp blue.misc matches 1 run scoreboard players add #.temp0 blue.misc 100
execute if score #.temp0 blue.misc matches ..100 run damage @s 22 falling_block by @a[tag=blue.tr.dune,limit=1]
execute if score #.temp0 blue.misc matches 101..200 run damage @s 30 falling_block by @a[tag=blue.tr.dune,limit=1]
execute if score #.temp0 blue.misc matches 201..300 run damage @s 38 falling_block by @a[tag=blue.tr.dune,limit=1]
execute if score #.temp0 blue.misc matches 304..400 run damage @s 46 falling_block by @a[tag=blue.tr.dune,limit=1]
execute if score #.temp0 blue.misc matches 401..500 run damage @s 52 falling_block by @a[tag=blue.tr.dune,limit=1]
execute if score #.temp0 blue.misc matches 501.. run damage @s 60 falling_block by @a[tag=blue.tr.dune,limit=1]
execute unless score #.temp0 blue.misc matches ..200 run effect give @s slowness 4 2 true
execute if score #.temp0 blue.misc matches ..200 run effect give @s slowness 2 1 true
scoreboard players set #.temp blue.misc -592