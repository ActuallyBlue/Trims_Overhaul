execute store result score #.temp0 blue.misc run data get storage blue:trims logs.temp[-1].time
execute store result storage blue:trims logs.time int -1 run scoreboard players operation #.temp0 blue.misc -= #.temp blue.misc
tellraw @s {"translate":"blue.tr.logs.unlock","fallback":"%s unlocked %s objective %s minutes ago","color":"gray","with":[{"storage":"blue:trims","nbt":"logs.temp[-1].user","color":"white"},{"storage":"blue:trims","nbt":"logs.temp[-1].trim","extra":["'s"],"interpret":true},{"storage":"blue:trims","nbt":"logs.time","color":"white"}]}
data remove storage blue:trims logs.temp[-1]
execute if data storage blue:trims logs.temp[] run function blue:tr/debug/logs/z/ul