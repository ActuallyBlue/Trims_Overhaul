scoreboard players add @s blue.misc 1
schedule function blue:tr/effects/dune/geyser/loop 1t
execute if score @s blue.misc matches 2 positioned ~ ~-0.5 ~ run tp @n[type=block_display,tag=blue.tr.dune_geyser] ~ ~0.85 ~
execute unless score @s blue.misc matches 12.. run return fail
execute unless score @s blue.misc matches 150.. run function blue:tr/effects/dune/geyser/vfx
execute unless score @s blue.misc matches 160.. run return fail
particle falling_dust{block_state:{Name:sand}} ~ ~0.3 ~ 0.4 0.2 0.4 0.2 40
playsound block.sand.break player @a ~ ~ ~ 2 0.5
playsound block.sand.break player @a ~ ~ ~ 2 1
execute as @e[type=block_display,distance=..0.4,tag=blue.tr.dune_geyser,limit=1] on passengers run kill
kill @e[type=block_display,distance=..0.4,tag=blue.tr.dune_geyser,limit=1]
kill