execute store success score #.temp blue.misc run damage @s 6.5 blue:tr/fish by @a[tag=blue.tr.coast,limit=1]
execute if score #.temp blue.misc matches 0 run return fail
scoreboard players set #.temp blue.misc -99
particle rain ^ ^ ^-0.25 0.1 0.1 0.1 0 18
playsound entity.salmon.hurt player @a