advancement revoke @s only blue:tr/kill_raider req
execute if entity @e[type=ravager,distance=..24,limit=1] run effect give @s resistance 5 1
execute if entity @e[type=ravager,distance=..24,limit=1] run effect give @s resistance 2 2
execute if entity @e[type=vindicator,tag=!smithed.strict,distance=..24,limit=1] run effect give @s strength 5 1
execute if entity @e[type=vindicator,tag=!smithed.strict,distance=..24,limit=1] run effect give @s strength 2 2
execute if entity @e[type=#raiders,type=!ravager,type=!vindicator,type=!pillager,distance=..32,limit=1] run effect give @s speed 5 1
execute if entity @e[type=#raiders,type=!ravager,type=!vindicator,type=!pillager,distance=..32,limit=1] run effect give @s speed 2 2
effect give @e[type=#raiders,tag=!smithed.strict,distance=..80,sort=nearest,limit=1] glowing 3 0 true
particle enchanted_hit ~ ~1 ~ 0.35 0.6 0.35 0.7 10
effect give @s speed 8 0 true
effect give @s haste 2 1 true
effect give @s haste 8 0 true
execute if score #.sentry.bonus_emeralds blue.config matches 0 run return 0
execute store result score #.temp blue.misc run attribute @s generic.luck get 10
scoreboard players add #.temp blue.misc 5
execute if score #.temp blue.misc matches 1000.. run scoreboard players set #.temp blue.misc 1000
loot give @s loot blue:tr/z/emeralds