scoreboard players reset #.rib.skull_cooldown blue.misc
execute as @a[tag=blue.tr.rib,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 1 2
title @a[tag=blue.tr.rib,limit=1] actionbar [{"translate":"entity.minecraft.wither_skull","color":"#E6484B"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]