playsound block.weeping_vines.break block @a[distance=..9] ~ ~ ~ 5 0.5
particle block{block_state:"minecraft:tall_grass"} ~ ~0.3 ~ 0.35 0.35 0.35 0 100 force
effect give @p[distance=..3,tag=!blue.tr.wild] glowing 1 0 true
scoreboard players remove #.wild.traps blue.misc 1
kill