scoreboard players reset #.wild.charging blue.misc
scoreboard players reset #.wild.charge blue.misc
scoreboard players add #.wild.traps blue.misc 1
title @s actionbar [{"translate":"blue.gap.1","fallback":""},{"text":"        ||||||||||||||||||||","color":"green"},{"translate":" (%s/%s)","color":"dark_gray","with":[{"score":{"name":"#.wild.traps","objective":"blue.misc"}},{"score":{"name":"#.wild.trap_limit","objective":"blue.config"}}]}]
execute if score #.wild.traps blue.misc > #.wild.trap_limit blue.config as @e[tag=blue.tr.wild.trap,sort=furthest,limit=1,type=marker] at @s positioned ~ ~1.25 ~ run function blue:tr/effects/wild/emp/trap/broken
summon marker ~ ~-1.25 ~ {Tags:["blue.tr.wild.trap"]}
particle falling_spore_blossom ~ ~0.5 ~ 0.4 0.05 0.4 0 64
particle composter ~ ~0.25 ~ 0.2 0.05 0.2 0 16
playsound block.grass.place block @s ~ ~ ~ 0.8 0.8