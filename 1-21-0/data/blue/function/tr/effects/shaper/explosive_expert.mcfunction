advancement revoke @s only blue:tr/explosive_expert req
effect give @s instant_health
execute if entity @s[tag=blue.tr.mats.powder] run return run function blue:tr/effects/shaper/emp/explosive_expert
particle smoke ~ ~1.5 ~ 0.3 0.4 0.3 0.1 20
playsound block.anvil.land player @a ~ ~ ~ 1 2
effect give @s haste 3 4 true