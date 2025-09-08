execute store success score #.temp blue.misc unless block ~ ~ ~ void_air
execute if score #.temp blue.misc matches 0 store success score #.temp blue.misc if block ~ ~ ~ void_air
execute if score #.temp blue.misc matches 1 run return 0
effect give @s slow_falling 1 0 true
execute positioned over motion_blocking run tp @s ~ ~10 ~
spreadplayers ~ ~ 0 3 false @s
execute if score #.wayfinder.return_cooldown blue.misc matches 1 run return 0
scoreboard players set #.wayfinder.return_cooldown blue.misc 1
schedule function blue:tr/effects/wayfinder/emp/return_cooldown 60t
execute at @s run particle enchant ~ ~3 ~ 0.35 2 0.35 0.2 256 force
execute at @s run playsound item.totem.use player @a ~ ~ ~ 1 2
playsound item.totem.use player @a ~ ~ ~ 3 2
particle enchant ~ ~7.25 ~ 0.35 5 0.35 0.2 256