scoreboard players reset #.host.exchange_cooldown blue.misc
execute as @a[tag=blue.tr.host,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 0.8 2
title @a[tag=blue.tr.host,limit=1] actionbar [{"translate":"blue.tr.exchange_name","fallback":"Exchange","color":"#A34646"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]