execute store result score #.temp blue.misc if entity @e[tag=blue.tr.dune_sandstorm,limit=3,type=marker]
execute as @e[tag=blue.tr.dune_sandstorm,type=marker] at @s run function blue:tr/effects/dune/sandstorm/entity
execute if score #.temp blue.misc matches 1.. run schedule function blue:tr/effects/dune/sandstorm/loop 1t