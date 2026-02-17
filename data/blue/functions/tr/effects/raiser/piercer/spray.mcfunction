execute if score #.temp blue.misc matches 0 run xp add @s -12 points
execute if score #.temp blue.misc matches 1 run xp add @s -10 points
execute positioned 0.0 0.1 0.0 positioned ^ ^ ^1.5 summon marker run function blue:shared/shootfacing
playsound item.brush.brushing.sand.complete block @a ^ ^ ^1 0.6 1
data modify storage blue:trims merge.orb.Motion set from storage blue:shared Pos
execute positioned ^ ^ ^1 summon experience_orb run data modify entity @s {} merge from storage blue:trims merge.orb