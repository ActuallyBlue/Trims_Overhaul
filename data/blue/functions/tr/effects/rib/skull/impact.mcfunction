particle soul ~ ~ ~ 0.1 0.1 0.1 0.1 32
effect clear @e[type=!#blue:tr/no_effects,team=!blue.tr.rib,tag=!blue.tr.rib,distance=..5] wither
execute as @e[type=!#blue:tr/no_effects,team=!blue.tr.rib,tag=!blue.tr.rib,distance=..4] run damage @s 6 blue:tr/raw by @a[tag=blue.tr.rib,limit=1]
effect give @e[type=!#blue:tr/no_effects,team=!blue.tr.rib,tag=!blue.tr.rib,distance=..4] wither 5 1
kill