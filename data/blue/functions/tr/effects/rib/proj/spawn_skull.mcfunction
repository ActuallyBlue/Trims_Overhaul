kill b163102f-0-c-0-1
kill @e[tag=blue.tr.rib_hitbox,type=interaction]
summon wither_skull ^ ^ ^2 {UUID:[I;-1318907857,12,0,1]}
scoreboard players reset #.rib.was_sneaking blue.misc
scoreboard players set #.rib.projectile_cooldown blue.misc 1
schedule function blue:tr/effects/rib/proj/cooldown 220t
execute unless entity @s[tag=!blue.tr.dragon_egg,predicate=!blue:shared/in_fortress] run schedule function blue:tr/effects/rib/proj/cooldown 140t
playsound entity.wither.shoot player @a ~ ~ ~ 1.5 1.2
execute positioned 0.0 0 0.0 positioned ^ ^ ^2.5 summon marker run function blue:shared/shootfacing
data modify entity b163102f-0-c-0-1 Motion set from storage blue:shared Pos
schedule function blue:tr/effects/rib/proj/kill 50t
kill b163102f-0-d-0-1
summon marker ~ ~ ~ {UUID:[I;-1318907857,13,0,1]}
ride b163102f-0-d-0-1 mount b163102f-0-c-0-1
execute at b163102f-0-c-0-1 run particle smoke ~ ~0.1 ~ 0.1 0.1 0.1 0.05 8
execute if entity @s[tag=blue.tr.mats.blaze] run schedule function blue:tr/effects/rib/proj/loop 1t
execute unless entity @s[tag=blue.tr.mats.blaze] run schedule function blue:tr/effects/rib/proj/timer 1t