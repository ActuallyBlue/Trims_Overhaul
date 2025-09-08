execute if score #.temp blue.misc matches 0 run xp add @s -12 points
execute if score #.temp blue.misc matches 1 run xp add @s -10 points
execute positioned 0.0 0.1 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^1.5
playsound item.brush.brushing.sand.complete block @a ^ ^ ^1 0.6 1
data modify storage blue:data trims.merge.orb.Motion set from entity b163102f-0-0-0-200000000 Pos
execute positioned ^ ^ ^1 summon experience_orb run data modify entity @s {} merge from storage blue:data trims.merge.orb