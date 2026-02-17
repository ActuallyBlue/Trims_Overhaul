execute if entity @s[advancements={blue:tr/infliction={can_inflict=true}}] run return run function blue:tr/effects/rib/can_inflict
advancement revoke @a[advancements={blue:tr/infliction={can_inflict=true}}] only blue:tr/infliction can_inflict
advancement revoke @s only blue:tr/infliction inflicted
playsound entity.wither.break_block player @a ~ ~ ~ 0.6 2
particle ash ~ ~1.2 ~ 0.3 0.4 0.3 0 24
effect give @s wither 3 9
damage @s 5 wither