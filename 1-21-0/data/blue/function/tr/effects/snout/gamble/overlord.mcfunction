title @s actionbar {"translate":"blue.tr.gamble.overlord","fallback":"Overlord","color":"dark_green"}
playsound entity.ravager.roar player @a ~ ~ ~ 1 0.5
playsound entity.wither.ambient player @a ~ ~ ~ 2 0.5
playsound entity.ender_dragon.growl player @a ~ ~ ~ 3 0.6
title @a[distance=0.01..32] subtitle {"text":"⚠","color":"dark_red"}
title @a[distance=0.01..32] title ""
particle dripping_dripstone_lava ~ ~1 ~ 5 3 5 0 128 force @a[scores={blue.particles=2..}]
particle dripping_dripstone_lava ~ ~1 ~ 5 3 5 0 128 normal @a[scores={blue.particles=1..}]
particle instant_effect ~ ~0.5 ~ 0.3 0.6 0.3 1 64 force
particle lava ~ ~1 ~ 5 3 5 0 128 force @a[scores={blue.particles=2..}]
particle lava ~ ~1 ~ 5 3 5 0 128 force
scoreboard players set #.snout.overlord_duration blue.misc 400
function blue:tr/effects/snout/gamble/overlord_loop
effect give @s fire_resistance 60 0
effect give @s instant_health 20 0
effect give @s health_boost 20 9
effect give @s strength 20 1
effect give @s speed 20 3
effect give @s haste 20 1