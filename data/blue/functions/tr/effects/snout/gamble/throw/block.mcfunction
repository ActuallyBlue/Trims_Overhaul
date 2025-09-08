playsound block.nether_gold_ore.break player @s ~ ~ ~ 2 0.5
damage @s 12 player_attack by @a[tag=blue.tr.snout,limit=1]
scoreboard players set #.temp blue.misc -6624
effect give @s slowness 1 4 true