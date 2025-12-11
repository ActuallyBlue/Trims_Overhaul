particle smoke ~ ~0.5 ~ 0.3 0.3 0.3 0 1
particle mycelium ~ ~0.5 ~ 0.2 0.2 0.2 0 4
execute if score #.shaper.tnt_bounce blue.config matches 0 run return fail
data modify storage blue:trims Motion set from entity @s Motion
execute store result score #x blue.misc run data get storage blue:trims Motion[0] 100000
execute store result score #y blue.misc run data get storage blue:trims Motion[1] 100000
execute store result score #z blue.misc run data get storage blue:trims Motion[2] 100000
execute if score #x blue.misc matches 0 unless score @s blue.misc matches -2000..2000 store result entity @s Motion[0] double -0.000005 run scoreboard players get @s blue.misc
execute if score #y blue.misc matches 0 unless score @s blue.tr.died matches -5000..2000 store result entity @s Motion[1] double -0.000005 run scoreboard players get @s blue.tr.died
execute if score #z blue.misc matches 0 unless score @s blue.tr.combat matches -2000..2000 store result entity @s Motion[2] double -0.000005 run scoreboard players get @s blue.tr.combat
execute store result score @s blue.misc run data get storage blue:trims Motion[0] 100000
execute store result score @s blue.tr.died run data get storage blue:trims Motion[1] 100000
execute store result score @s blue.tr.combat run data get storage blue:trims Motion[2] 100000