execute on origin if score @s blue.tr.current_trim matches 6 run scoreboard players set #.temp blue.misc -8821
execute unless score #.temp blue.misc matches -8821 run return fail
particle sweep_attack
playsound entity.player.attack.sweep player @a ~ ~ ~ 0.5 2
playsound entity.skeleton.death player @a ~ ~ ~ 1 2
execute if entity @a[tag=blue.tr.mats.blaze,limit=1] run schedule function blue:tr/effects/rib/deflect/loop 1t
execute store result entity @s acceleration_power double 0.2 run data get entity @s acceleration_power 10
execute store result entity @s ExplosionPower int 3 run data get entity @s ExplosionPower
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.rib_deflected