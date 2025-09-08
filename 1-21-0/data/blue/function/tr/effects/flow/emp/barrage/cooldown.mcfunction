scoreboard players reset #.flow.barrage_cooldown blue.misc
execute as @a[tag=blue.tr.flow,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 1.25 1.8
title @a[tag=blue.tr.flow,limit=1] actionbar [{"translate":"blue.tr.wind_barrage_name","fallback":"Wind Barrage","color":"#85B2C5"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]