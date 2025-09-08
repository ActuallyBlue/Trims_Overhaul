scoreboard players reset #.rib.ashen_cooldown blue.misc
execute as @a[tag=blue.tr.rib,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 1.5 1.5
title @a[tag=blue.tr.rib,limit=1] actionbar [{"translate":"blue.tr.ashen_trance","fallback":"Ashen Trance","color":"#E6484B"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]