scoreboard players reset #.eye.scare_cooldown blue.misc
execute as @a[tag=blue.tr.eye,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 0.7 2
title @a[tag=blue.tr.eye,limit=1] actionbar [{"translate":"blue.tr.scare","fallback":"Scare","color":"#1F8A46"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]