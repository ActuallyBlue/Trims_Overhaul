scoreboard players add @s blue.misc 1
schedule function blue:tr/effects/dune/geyser/loop 1t
execute if score @s blue.misc matches 2 run tp @s ~ ~0.37 ~
execute unless score @s blue.misc matches 12.. run return fail
execute unless score @s blue.misc matches 170.. run function blue:tr/effects/dune/geyser/vfx
execute unless score @s blue.misc matches 180.. run return fail
particle item{item:suspicious_sand} ~ ~ ~ 0.3 0.3 0.3 0.12 48
particle falling_dust{block_state:{Name:sand}} ~ ~ ~ 0.6 0.3 0.6 0.2 40
playsound block.sand.break player @a ~ ~ ~ 2 0.5
playsound block.sand.break player @a ~ ~ ~ 2 1
execute on passengers run kill
kill