execute positioned ^ ^ ^3 as @e[type=!#blue:shared/peaceful,sort=nearest,distance=..4] unless entity b163102f-0-8-0-1 at @s on attacker if score @s blue.tr.current_trim matches 13 run summon area_effect_cloud ~ ~ ~ {Rotation:[0,180],Radius:0,Duration:1,UUID:[I;-1318907857,8,0,1]}
execute if entity @s[advancements={blue:tr/double_strike={fangs=false}}] unless entity @e[tag=blue.tr.vex.fang,type=evoker_fangs,distance=..16,limit=1] run function blue:tr/effects/vex/strike/fangs
advancement revoke @s only blue:tr/double_strike
execute store success score #.temp blue.misc run kill b163102f-0-8-0-1
execute unless score #.vex.isolated blue.misc matches 1 run return 0
execute if score #.temp blue.misc matches 1 run return 0
schedule function blue:tr/effects/vex/strike/refresh 1t
effect give @s invisibility 5 0
effect give @s strength 5 0 true
effect give @s speed 5 0 true
particle flash ~ ~0.5 ~