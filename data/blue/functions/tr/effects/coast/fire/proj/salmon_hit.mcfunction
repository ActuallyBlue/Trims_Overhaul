scoreboard players operation #.temp0 blue.misc = #.temp blue.misc
execute if score #.temp0 blue.misc matches 0 store success score #.temp blue.misc run damage @s 10 blue:tr/fish by @a[tag=blue.tr.coast,limit=1]
execute if score #.temp0 blue.misc matches 1 store success score #.temp blue.misc run damage @s 36 blue:tr/fish by @a[tag=blue.tr.coast,limit=1]
execute if score #.temp blue.misc matches 0 run return 0
scoreboard players set #.temp blue.misc -99
particle rain ^ ^ ^-0.25 0.1 0.1 0.1 0 18
playsound entity.salmon.hurt player @a