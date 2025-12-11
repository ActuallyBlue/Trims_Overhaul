execute store result score #.temp0 blue.misc run data get storage blue:trims logs.temp[-1].time
execute store result storage blue:trims logs.time int -1 run scoreboard players operation #.temp0 blue.misc -= #.temp blue.misc
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Wayfinder"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Wayfinder","color":"#F1FFC8"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Silence"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Silence","color":"#3842Cf"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Raiser"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Raiser","color":"#95B623"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Shaper"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Shaper","color":"#8F8F8F"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Sentry"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Sentry","color":"#4B885B"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Spire"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Spire","color":"#BE20C7"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Coast"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Coast","color":"#C1C888"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Snout"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Snout","color":"#F2B01A"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Ward"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Ward","color":"#5C70AE"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Dune"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Dune","color":"#E7C547"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Wild"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Wild","color":"#00D529"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Tide"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Tide","color":"#199ADD"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Host"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Host","color":"#A34646"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Eye"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Eye","color":"#1F8A46"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Rib"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Rib","color":"#E6484B"}'
execute if data storage blue:trims logs.temp[-1].trim{"translate":"Vex"} run data modify storage blue:trims logs.temp[-1].trim set value '{"translate":"Vex","color":"#CFC6A5"}'
tellraw @s {"translate":"blue.tr.logs.completion","fallback":"%s completed %s objective %s minutes ago","color":"gray","with":[{"storage":"blue:trims","nbt":"logs.temp[-1].user","color":"white"},{"storage":"blue:trims","nbt":"logs.temp[-1].trim","extra":["'s"],"interpret":true},{"storage":"blue:trims","nbt":"logs.time","color":"white"}]}
data remove storage blue:trims logs.temp[-1]
execute if data storage blue:trims logs.temp[] run function blue:tr/debug/logs/z/cl