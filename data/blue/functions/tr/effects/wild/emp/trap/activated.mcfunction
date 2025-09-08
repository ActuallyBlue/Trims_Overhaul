damage @s 10 blue:tr/trap
effect give @s darkness 3 0
effect give @s nausea 10 100
effect give @s slowness 1 20 true
effect give @s slowness 8 1 true
effect give @s weakness 6 0 true
effect give @s mining_fatigue 8 1 true
particle falling_spore_blossom ~ ~1 ~ 0.3 0.4 0.3 0.01 48
scoreboard players set #.trap_activated blue.misc 1
tag @s add blue.tr.wild.cd