scoreboard players reset #.wild.charging blue.misc
scoreboard players reset #.wild.charge blue.misc
execute positioned ~ ~-1.25 ~ align xyz if entity @e[type=marker,tag=blue.tr.wild.trap,dx=0,limit=1] run return run function blue:tr/effects/wild/emp/noplace
summon marker ~ ~-1.25 ~ {Tags:["blue.tr.wild.trap"]}
particle falling_spore_blossom ~ ~0.5 ~ 0.4 0.05 0.4 0 100
playsound block.grass.place block @s ~ ~ ~ 0.8 0.8