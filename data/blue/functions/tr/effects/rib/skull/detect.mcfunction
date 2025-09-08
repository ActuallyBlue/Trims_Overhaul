scoreboard players set #.rib.was_sneaking blue.misc 1
execute unless entity @e[type=interaction,tag=blue.tr.rib_hitbox,limit=1] positioned ^ ^ ^0.6 run summon interaction ~ ~-0.2 ~ {width:0.4,height:0.5,Tags:["blue.tr.rib_hitbox"]}
execute positioned ^ ^ ^0.6 run tp @e[type=interaction,tag=blue.tr.rib_hitbox,limit=1] ~ ~-0.2 ~
execute as @e[type=interaction,tag=blue.tr.rib_hitbox,nbt={attack:{}},limit=1] on attacker if score @s blue.tr.current_trim matches 6 run scoreboard players set #.rib.was_sneaking blue.misc 2
execute unless score #.rib.was_sneaking blue.misc matches 2 run return 0
kill @e[type=interaction,tag=blue.tr.rib_hitbox]
kill b163102f-0-c-0-1
summon wither_skull ^ ^ ^2 {UUID:[I;-1318907857,12,0,1]}
scoreboard players reset #.rib.was_sneaking blue.misc
scoreboard players set #.rib.skull_cooldown blue.misc 1
schedule function blue:tr/effects/rib/skull/cooldown 200t
playsound entity.wither.shoot player @a ~ ~ ~ 1.5 1.2
execute in overworld positioned 0.0 0 0.0 run tp b163102f-0-0-0-200000000 ^ ^ ^1.5
data modify entity b163102f-0-c-0-1 Motion set from entity b163102f-0-0-0-200000000 Pos
kill b163102f-0-d-0-1
summon marker ~ ~ ~ {UUID:[I;-1318907857,13,0,1]}
ride b163102f-0-d-0-1 mount b163102f-0-c-0-1
execute at b163102f-0-c-0-1 run particle smoke ~ ~0.1 ~ 0.1 0.1 0.1 0.05 8
execute if entity @s[tag=blue.tr.mats.blaze] run schedule function blue:tr/effects/rib/skull/loop 1t
execute unless entity @s[tag=blue.tr.mats.blaze] run schedule function blue:tr/effects/rib/skull/timer 1t