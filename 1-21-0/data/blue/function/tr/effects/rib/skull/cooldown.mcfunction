scoreboard players reset #.rib.skull_cooldown blue.misc
execute as @a[tag=blue.tr.rib,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 1 2
title @a[tag=blue.tr.rib,limit=1] actionbar [{"translate":"blue.tr.wither_skull_name","fallback":"Wither Skull","color":"#E6484B"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]