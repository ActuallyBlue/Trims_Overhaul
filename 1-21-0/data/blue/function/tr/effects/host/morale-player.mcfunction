execute if entity @s[tag=blue.tr.host.morale,advancements={blue:tr/tags={heavy_hit=true}}] run scoreboard players add #.host.sacrifice blue.misc 1
effect give @a[tag=blue.tr.host,limit=1] resistance 1 1 true
advancement revoke @s only blue:tr/tags heavy_hit
effect give @s resistance 1 1 true
tag @s add blue.tr.host.morale