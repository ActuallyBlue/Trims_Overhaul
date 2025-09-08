execute on attacker if entity @s[tag=blue.tr.mats.shard] run scoreboard players set #.temp blue.misc -19
execute unless score #.temp blue.misc matches -19 run return fail
playsound entity.warden.attack_impact master @a[distance=..16] ~ ~ ~ 3 2
playsound entity.warden.attack_impact master @a[distance=..16] ~ ~ ~ 3 2
playsound entity.warden.attack_impact master @a[distance=..16] ~ ~ ~ 3 2
particle sculk_soul ~ ~1.5 ~ 0.6 0.7 0.6 0.1 64
tag @s add blue.tr.silence.was_hit
effect give @s strength 5 0 true
effect give @s speed 3 0
team leave @s