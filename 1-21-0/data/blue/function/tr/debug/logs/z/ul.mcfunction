execute store result score #.temp0 blue.misc run data get storage blue:data trims.logs.temp[-1].time
execute store result storage blue:data trims.logs.time int -1 run scoreboard players operation #.temp0 blue.misc -= #.temp blue.misc
tellraw @s {"translate":"blue.tr.logs.unlock","fallback":"%s unlocked %s objective %s minutes ago","color":"gray","with":[{"storage":"blue:data","nbt":"trims.logs.temp[-1].user","color":"white"},{"storage":"blue:data","nbt":"trims.logs.temp[-1].trim","extra":["'s"],"interpret":true},{"storage":"blue:data","nbt":"trims.logs.time","color":"white"}]}
data remove storage blue:data trims.logs.temp[-1]
execute if data storage blue:data trims.logs.temp[] run function blue:tr/debug/logs/z/ul