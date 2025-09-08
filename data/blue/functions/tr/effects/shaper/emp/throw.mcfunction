execute if score #.difficulty blue.misc matches ..1 in overworld positioned 0.0 -0.15 0.0 run tp b163102f-0-0-0-200000000 ^ ^ ^1.5
execute if score #.difficulty blue.misc matches 2 in overworld positioned 0.0 -0.15 0.0 run tp b163102f-0-0-0-200000000 ^ ^ ^1.1
execute if score #.difficulty blue.misc matches 3 in overworld positioned 0.0 -0.15 0.0 run tp b163102f-0-0-0-200000000 ^ ^ ^0.7
data modify storage blue:data trims.merge.tnt.Motion set from entity b163102f-0-0-0-200000000 Pos
execute if score #.difficulty blue.misc matches 3 run data modify storage blue:data trims.merge.tnt.explosion_power set value 2
execute if score #.difficulty blue.misc matches 2 run data modify storage blue:data trims.merge.tnt.explosion_power set value 2.5
execute if score #.difficulty blue.misc matches 2.. unless entity @a[tag=!blue.tr.shaper,distance=..48,limit=1] run data modify storage blue:data trims.merge.tnt.explosion_power set value 3
execute if block ~ ~ ~ #blue:trims/passable summon tnt run data modify entity @s {} merge from storage blue:data trims.merge.tnt
execute if block ~ ~ ~ #blue:trims/passable summon tnt run data modify entity @s {} merge from storage blue:data trims.merge.tnt
execute unless block ~ ~ ~ #blue:trims/passable align xyz positioned ~0.5 ~0.5 ~0.5 summon tnt run data modify entity @s {} merge from storage blue:data trims.merge.tnt
execute unless block ~ ~ ~ #blue:trims/passable align xyz positioned ~0.5 ~0.5 ~0.5 summon tnt run data modify entity @s {} merge from storage blue:data trims.merge.tnt
playsound item.flintandsteel.use player @a ~ ~ ~ 0.2 0.5
playsound block.lava.pop player @a ~ ~ ~ 0.6 0.5
scoreboard players set #.temp blue.misc -1