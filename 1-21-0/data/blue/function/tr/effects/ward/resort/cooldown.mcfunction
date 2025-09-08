scoreboard players reset #.ward.resort_cooldown blue.misc
execute as @a[tag=blue.tr.ward,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 1 1.5
title @a[tag=blue.tr.ward,limit=1] actionbar [{"translate":"blue.tr.last_resort_name","fallback":"Last Resort","color":"#5C70AE"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]