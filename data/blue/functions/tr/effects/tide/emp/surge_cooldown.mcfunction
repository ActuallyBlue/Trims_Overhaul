scoreboard players reset #.tide.surge_cooldown blue.misc
execute as @a[tag=blue.tr.tide,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 1.25 1.8
title @a[tag=blue.tr.tide,limit=1] actionbar [{"translate":"blue.tr.tidal_surge_name","fallback":"Tidal Surge","color":"#199ADD"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]