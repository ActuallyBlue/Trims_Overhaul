execute if entity @s[tag=blue.tr.host.morale,advancements={blue:tr/tags={heavy_hit=true}}] run scoreboard players add #.host.sacrifice blue.misc 1
execute if score #.host.sacrifice blue.misc matches 2.. as @a[scores={blue.tr.current_trim=4},limit=1] at @s run function blue:tr/effects/host/sacrifice
effect give @a[tag=blue.tr.host,limit=1] resistance 1 1 true
advancement revoke @s only blue:tr/tags heavy_hit
effect give @s resistance 1 1 true
tag @s add blue.tr.host.morale