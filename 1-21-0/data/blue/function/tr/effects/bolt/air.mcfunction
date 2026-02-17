
execute if block ~ ~ ~ #replaceable align xyz positioned ~0.5 ~0.5 ~0.5 run return run function blue:tr/effects/bolt/place with storage blue:trims
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-0.5 run function blue:tr/effects/bolt/air