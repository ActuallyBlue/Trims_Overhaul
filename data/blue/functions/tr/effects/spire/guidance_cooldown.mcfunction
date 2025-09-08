scoreboard players reset #.spire.guidance_cooldown blue.misc
execute as @a[tag=blue.tr.spire,limit=1] at @s run playsound block.amethyst_block.step player @s ~ ~ ~ 0.6 2
title @a[tag=blue.tr.spire,limit=1] actionbar [{"translate":"blue.tr.guidance_name","fallback":"Guidance","color":"#BE20C7"},{"translate":"blue.tr.ability_available","fallback":" is now available","color":"gray"}]