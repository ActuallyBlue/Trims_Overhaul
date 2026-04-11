damage @s 4 blue:tr/trap by @a[tag=blue.tr.wild,limit=1]
damage @s 4 blue:tr/trap by @a[tag=blue.tr.wild,limit=1]
effect give @s slowness 1 20 true
effect give @s slowness 2 0 true
effect give @s weakness 2 0 true
particle falling_spore_blossom ~ ~1 ~ 0.3 0.4 0.3 0.01 48
scoreboard players set #.temp blue.misc 60
tag @s add blue.tr.wild.cd