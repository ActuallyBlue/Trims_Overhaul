execute positioned ^ ^ ^3 as @e[type=!#blue:shared/peaceful,distance=..4] unless entity b163102f-0-8-0-1 at @s on attacker if entity @s[tag=blue.tr.vex] run summon area_effect_cloud ~ ~ ~ {Rotation:[0,180],Radius:0,Duration:1,UUID:[I;-1318907857,8,0,1],custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"}}
execute if entity @s[advancements={blue:tr/double_strike={fangs=false}}] run function blue:tr/effects/vex/strike/fangs
advancement revoke @s only blue:tr/double_strike
execute unless score #.isolated blue.misc matches 1 run return fail
execute if entity b163102f-0-8-0-1 run return fail
schedule function blue:tr/effects/vex/strike/refresh 1t
effect give @s invisibility 5 0
effect give @s strength 5 1 true
effect give @s speed 5 0 true
particle flash{color:[1,1,1,0.5]} ~ ~0.5 ~