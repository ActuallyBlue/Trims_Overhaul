tag @s add blue.tr.propel_check
execute on origin if entity @s[tag=blue.tr.coast] run scoreboard players set #.temp blue.misc -5912
execute unless score #.temp blue.misc matches -5912 run return fail
scoreboard players reset #.temp blue.misc
execute on origin run tag @s remove blue.tr.coast_propel
playsound item.trident.throw player @a ~ ~ ~ 1 0.9
data modify storage blue:trims temp.Motion set from entity @s Motion
execute store result storage blue:trims temp.Motion[0] double 0.0015 run data get storage blue:trims temp.Motion[0] 1000
execute store result storage blue:trims temp.Motion[1] double 0.0015 run data get storage blue:trims temp.Motion[1] 1000
execute store result storage blue:trims temp.Motion[2] double 0.0015 run data get storage blue:trims temp.Motion[2] 1000
data modify entity @s Motion set from storage blue:trims temp.Motion
data modify entity @s crit set value 1b