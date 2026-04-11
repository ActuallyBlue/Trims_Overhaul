execute if score #.vex.isolated blue.misc matches 1 positioned as b163102f-0-8-0-1 facing entity @s feet rotated ~ 0 if block ^ ^ ^-1.75 #blue:shared/passable run summon evoker_fangs ^ ^-0.25 ^-2.75 {Warmup:12,Tags:["blue.tr.vex.fang"]}
execute positioned as b163102f-0-8-0-1 facing entity @s feet rotated ~ 0 if block ^ ^ ^-0.5 #blue:shared/passable run summon evoker_fangs ^ ^-0.25 ^-1.5 {Warmup:7,Tags:["blue.tr.vex.fang"]}
execute as @e[tag=blue.tr.vex.fang,type=evoker_fangs,limit=2] at @s facing entity @a[tag=blue.tr.vex,limit=1] eyes rotated ~90 0 run tp @s ~ ~ ~ ~ ~
data modify storage blue:trims UUID set from entity @s UUID
execute as @e[tag=blue.tr.vex.fang,limit=2,type=evoker_fangs] run data modify entity @s Owner set from storage blue:trims UUID