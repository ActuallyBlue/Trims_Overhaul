execute store success score #.temp blue.misc if entity @s[advancements={blue:tr/infliction={can_inflict=true}}]
execute if score #.temp blue.misc matches 1 run function blue:tr/effects/rib/can_inflict
execute if score #.temp blue.misc matches 1 run return 0
advancement revoke @a[advancements={blue:tr/infliction={can_inflict=true}}] only blue:tr/infliction can_inflict
advancement revoke @s only blue:tr/infliction inflicted
playsound entity.wither.break_block player @a ~ ~ ~ 0.6 2
particle ash ~ ~1.2 ~ 0.3 0.4 0.3 0 24
effect give @s wither 1 9