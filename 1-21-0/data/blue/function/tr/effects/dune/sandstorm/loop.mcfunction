execute store result score #.temp blue.misc if entity @e[type=marker,tag=blue.tr.dune_sandstorm,limit=3]
execute as @e[type=marker,tag=blue.tr.dune_sandstorm] at @s run function blue:tr/effects/dune/sandstorm/entity
execute if score #.temp blue.misc matches 1.. run schedule function blue:tr/effects/dune/sandstorm/loop 1t