advancement revoke @s only blue:tr/shoot
execute unless score #.sentry.charge blue.misc matches 48.. run return fail
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,tag=!blue.tr.checked,distance=..2] run function blue:tr/effects/sentry/ballista/owner
execute unless score #.sentry.shoot blue.misc matches 1 run return fail
scoreboard players reset #.sentry.shoot blue.misc
scoreboard players set #.sentry.charge blue.misc -80
effect clear @s hero_of_the_village
execute if score #.sentry.range blue.misc matches 100 run effect give @s hero_of_the_village 1200 3 true
execute if score #.sentry.range blue.misc matches 88 run effect give @s hero_of_the_village 900 2 true
execute if score #.sentry.range blue.misc matches 76 run effect give @s hero_of_the_village 600 1 true
execute if score #.sentry.range blue.misc matches 64 run effect give @s hero_of_the_village 300 0 true
scoreboard players operation #.temp blue.misc = #.sentry.range blue.misc
execute anchored eyes positioned ^ ^ ^5 run function blue:tr/effects/sentry/ballista/cast
playsound entity.dragon_fireball.explode player @a[distance=10..] ^ ^ ^2 2 1.5
playsound entity.dragon_fireball.explode player @a[distance=..10] ^ ^ ^2 1 1.5
playsound entity.firework_rocket.blast player @a ^ ^ ^2 1.5 0.5
playsound entity.firework_rocket.launch player @s ^ ^ ^5 1 1.4
playsound entity.dragon_fireball.explode player @a[tag=blue.tr.sound_temp] ~ ~ ~ 0 1.5 0.3
tag @a[tag=blue.tr.sound_temp] remove blue.tr.sound_temp
tp @s ~ ~ ~ ~ ~-9