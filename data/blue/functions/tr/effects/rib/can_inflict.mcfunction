execute unless entity @s[tag=blue.tr.trim.rib] run advancement revoke @s only blue:tr/infliction can_inflict
execute unless entity @s[tag=blue.tr.trim.rib] run return 0
playsound entity.wither.break_block player @a ~ ~ ~ 0.2 2
particle white_ash ~ ~1.2 ~ 0.3 0.4 0.3 0 12