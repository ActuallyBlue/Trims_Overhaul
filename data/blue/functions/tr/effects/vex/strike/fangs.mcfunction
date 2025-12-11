execute if score #.vex.isolated blue.misc matches 1 positioned as b163102f-0-8-0-1 facing entity @s feet rotated ~ 0 run summon evoker_fangs ^ ^-0.25 ^-2.5 {Warmup:5,Tags:["blue.tr.vex_fang"]}
execute positioned as b163102f-0-8-0-1 facing entity @s feet rotated ~ 0 run summon evoker_fangs ^ ^-0.25 ^-1.5 {Warmup:2,Tags:["blue.tr.vex_fang"]}
data modify storage blue:trims nbt.UUID set from entity @s UUID
execute as @e[type=evoker_fangs,tag=blue.tr.vex_fang,limit=2] run data modify entity @s Owner set from storage blue:trims nbt.UUID