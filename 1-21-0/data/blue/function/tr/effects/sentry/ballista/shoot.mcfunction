advancement revoke @s only blue:tr/shoot_ballista req
scoreboard players reset #.sentry.sound blue.misc
execute unless score #.sentry.charge blue.misc matches 48.. run return fail
execute anchored eyes positioned ^ ^ ^ as @e[tag=!blue.tr.checked,distance=..2,type=arrow] run function blue:tr/effects/sentry/ballista/owner
execute unless score #.sentry.shoot blue.misc matches 1 run return fail
scoreboard players reset #.sentry.shoot blue.misc
scoreboard players set #.sentry.charge blue.misc -140
function blue:tr/effects/sentry/refresh
scoreboard players operation #.temp blue.misc = #.sentry.range blue.misc
execute anchored eyes positioned ^ ^ ^5 run function blue:tr/effects/sentry/ballista/cast
playsound entity.dragon_fireball.explode player @a[distance=10..] ^ ^ ^2 2 1.5
playsound entity.dragon_fireball.explode player @a[distance=..10] ^ ^ ^2 1 1.5
playsound entity.firework_rocket.blast player @a ^ ^ ^2 1.5 0.5
playsound entity.firework_rocket.launch player @s ^ ^ ^5 1 1.4
playsound entity.dragon_fireball.explode player @a[tag=blue.tr.sound_temp] ~ ~ ~ 0 1.5 0.3
tag @a[tag=blue.tr.sound_temp] remove blue.tr.sound_temp
tp @s ~ ~ ~ ~ ~-9