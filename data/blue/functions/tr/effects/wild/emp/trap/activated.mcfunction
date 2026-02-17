damage @s 6 blue:tr/trap
effect give @s nausea 10 100
effect give @s hunger 1 100 true
effect give @s slowness 9 1 true
effect give @s darkness 10 0 true
effect give @s mining_fatigue 8 0 true
effect give @s mining_fatigue 4 1 true
effect give @s mining_fatigue 3 2 true
scoreboard players remove @s blue.tr.combat 200
particle falling_spore_blossom ~ ~1 ~ 0.3 0.5 0.3 0.01 48
scoreboard players operation #.temp blue.misc = @s blue.id
tag @s add blue.tr.wild.cd
tp @s @s