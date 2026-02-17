kill b163102f-0-c-0-1
kill @e[tag=blue.tr.rib_hitbox,type=interaction]
summon small_fireball ^ ^ ^2 {UUID:[I;-1318907857,12,0,1]}
scoreboard players reset #.rib.was_sneaking blue.misc
scoreboard players set #.rib.projectile_cooldown blue.misc 1
schedule function blue:tr/effects/rib/proj/cooldown 110t
execute if predicate blue:shared/in_fortress run schedule function blue:tr/effects/rib/proj/cooldown 70t
execute if entity @s[tag=blue.tr.dragon_egg] run schedule function blue:tr/effects/rib/proj/cooldown 70t
playsound entity.blaze.shoot player @a ~ ~ ~ 1.5 1.6
execute positioned 0.0 0 0.0 positioned ^ ^ ^2.25 summon marker run function blue:shared/shootfacing
data modify entity b163102f-0-c-0-1 Motion set from storage blue:shared Pos
schedule function blue:tr/effects/rib/proj/kill 30t
particle flame ^ ^ ^5 0.1 0.1 0.1 0.06 6