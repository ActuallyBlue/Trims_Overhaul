execute on attacker rotated as @s in overworld positioned 0.0 0 0.0 run tp b163102f-0-0-0-200000000 ^ ^ ^1
data remove entity @s attack
execute if score @s blue.misc matches 1.. run return fail
execute on vehicle run data modify entity @s Motion set from entity b163102f-0-0-0-200000000 Pos
execute on vehicle run data modify entity @s Time set value 200
execute on vehicle run tag @s add blue.tr.dune_tossed
playsound item.brush.brushing.sand.complete player @a ~ ~ ~ 1.4 1
playsound entity.iron_golem.step player @a ~ ~ ~ 1.8 1.5
scoreboard players set @s blue.misc 3
particle crit ~ ~-0.25 ~ 0 0 0 0.2 16