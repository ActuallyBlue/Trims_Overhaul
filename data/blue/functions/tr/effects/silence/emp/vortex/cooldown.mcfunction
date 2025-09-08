scoreboard players reset #.silence.vortex_cooldown blue.misc
execute as @a[tag=blue.tr.silence,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 1.5 1.4
title @a[tag=blue.tr.silence,limit=1] actionbar [{"translate":"blue.tr.vortex_name","fallback":"Vortex","color":"#3842Cf"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]