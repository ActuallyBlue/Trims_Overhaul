scoreboard players reset #.wayfinder.warp_cooldown blue.misc
execute as @a[tag=blue.tr.wayfinder,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 1.25 2
title @a[tag=blue.tr.wayfinder,limit=1] actionbar [{"translate":"blue.tr.warp_name","fallback":"Warp","color":"#F1FFC8"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]