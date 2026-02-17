execute unless predicate blue:shared/has_vehicle positioned ~ ~-1 ~ run function blue:tr/effects/dune/raisure/land
scoreboard players remove @s[scores={blue.misc=1..}] blue.misc 1
execute on attacker run scoreboard players set #.temp blue.misc -572
execute unless score #.temp blue.misc matches -572 run return 0
execute if score @s blue.misc matches 1.. run data remove entity @s attack
execute if score @s blue.misc matches 1.. run return 0
execute on attacker rotated as @s positioned 0.0 0 0.0 positioned ^ ^ ^1 summon marker run function blue:shared/shootfacing
execute on vehicle run function blue:tr/effects/dune/raisure/vehicle
playsound item.brush.brushing.sand.complete player @a ~ ~ ~ 1.4 1
playsound entity.iron_golem.step player @a ~ ~ ~ 1.8 1.5
scoreboard players reset #.temp blue.misc
scoreboard players set @s blue.misc 4
particle crit ~ ~-0.25 ~ 0 0 0 0.2 16
data remove entity @s attack