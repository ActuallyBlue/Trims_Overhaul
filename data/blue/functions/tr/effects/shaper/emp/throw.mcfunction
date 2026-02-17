execute if score #.difficulty blue.misc matches ..1 positioned 0.0 -0.15 0.0 positioned ^ ^ ^1.5 summon marker run function blue:shared/shootfacing
execute if score #.difficulty blue.misc matches 2 positioned 0.0 -0.15 0.0 positioned ^ ^ ^1.35 summon marker run function blue:shared/shootfacing
execute if score #.difficulty blue.misc matches 3.. positioned 0.0 -0.15 0.0 positioned ^ ^ ^1.2 summon marker run function blue:shared/shootfacing
data modify storage blue:trims merge.tnt.Motion set from storage blue:shared Pos
execute if score #.difficulty blue.misc matches 3.. run data modify storage blue:trims merge.tnt.explosion_power set value 2
execute if score #.difficulty blue.misc matches 2 run data modify storage blue:trims merge.tnt.explosion_power set value 2.5
execute if score #.difficulty blue.misc matches 2.. unless entity @a[tag=!blue.tr.shaper,distance=..48,limit=1] run data modify storage blue:trims merge.tnt.explosion_power set value 3
execute if block ~ ~ ~ #blue:shared/passable summon tnt run data modify entity @s {} merge from storage blue:trims merge.tnt
execute if block ~ ~ ~ #blue:shared/passable summon tnt run data modify entity @s {} merge from storage blue:trims merge.tnt
execute unless block ~ ~ ~ #blue:shared/passable align xyz positioned ~0.5 ~0.5 ~0.5 summon tnt run data modify entity @s {} merge from storage blue:trims merge.tnt
execute unless block ~ ~ ~ #blue:shared/passable align xyz positioned ~0.5 ~0.5 ~0.5 summon tnt run data modify entity @s {} merge from storage blue:trims merge.tnt
playsound item.flintandsteel.use player @a ~ ~ ~ 0.2 0.5
playsound block.lava.pop player @a ~ ~ ~ 0.6 0.5
scoreboard players set #.temp blue.misc -1