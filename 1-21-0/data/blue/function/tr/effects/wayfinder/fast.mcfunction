particle enchant ~ ~0.8 ~ 0.2 0.3 0.2 0.1 3
particle composter ~ ~ ~ 0.2 0.1 0.2 0 1
execute unless predicate {"condition":"entity_properties","entity":"this","predicate":{"effects":{"minecraft:speed":{"amplifier":{"min":5}}}}} run return fail
execute unless predicate blue:shared/is_sprinting run effect clear @s speed
particle enchant ~ ~0.9 ~ 0.25 0.4 0.25 0.1 4
execute unless score #.wayfinder.ambient blue.misc matches 3 run return fail
summon marker ~ ~0.1 ~ {Tags:["blue.tr.wayfinder.trail"]}
schedule function blue:tr/effects/wayfinder/emp/trailblazer 1t