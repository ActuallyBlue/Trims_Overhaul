scoreboard players reset #.ward.kinetic_cooldown blue.misc
execute as @a[tag=blue.tr.ward,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 0.7 2
title @a[tag=blue.tr.ward,limit=1] actionbar [{"translate":"blue.tr.kinetic_deflection_name","fallback":"Kinetic Deflection","color":"#7D91D5"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]