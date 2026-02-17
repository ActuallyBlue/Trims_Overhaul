title @s actionbar {"text":"||||||||||||||||||||","color":"green"}
scoreboard players reset #.wild.charging blue.misc
scoreboard players reset #.wild.charge blue.misc
execute positioned ~ ~-1.25 ~ align xyz if entity @e[tag=blue.tr.wild.trap,dx=0,limit=1,type=marker] run return run function blue:tr/effects/wild/emp/no_place
scoreboard players add #.wild.traps blue.misc 1
summon marker ~ ~-1.25 ~ {Tags:["blue.tr.wild.trap"]}
particle falling_spore_blossom ~ ~0.5 ~ 0.4 0.05 0.4 0 64
particle composter ~ ~0.25 ~ 0.2 0.05 0.2 0 16
playsound block.grass.place block @s ~ ~ ~ 0.8 0.8