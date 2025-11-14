effect clear @s darkness
effect clear @s blindness
scoreboard players add #.silence.ambient blue.misc 1
execute if score #.60 blue.misc matches 30 as @e[type=!#blue:shared/no_effects,type=!warden,type=!player,tag=!blue.tr.silence.Silent,tag=!smithed.strict,distance=0.01..16] at @s run function blue:tr/effects/silence/entity
execute if score #.60 blue.misc matches 40 as @a[distance=..9,advancements={blue:tr/trust={silence=false}},gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/silence/darkness
execute as @a[distance=0.01..,predicate=blue:tr/muffled,tag=!blue.tr.trim.ward] run function blue:tr/effects/silence/muffled
execute if score #.silence.ambient blue.misc matches 11.. store success score #.silence.ambient blue.misc run particle sculk_soul ~ ~0.8 ~ 0.2 0.35 0.2 0.01 1 normal @a[scores={blue.particles=1..}]
execute unless entity @s[tag=blue.tr.mats.shard] run return fail
execute if score #.silence.ambient blue.misc matches 6 run particle sculk_soul ~ ~0.8 ~ 0.2 0.35 0.2 0.01 2 normal @a[scores={blue.particles=2..}]
execute if score #.60 blue.misc matches 15 run team join blue.tr.silence @e[type=warden,team=,tag=!blue.tr.silence.was_hit]
execute if score #.60 blue.misc matches 15 if entity @e[type=warden,team=blue.tr.silence,distance=..100,limit=1] run team join blue.tr.silence
execute as @e[type=item,tag=!blue.tr.checked,distance=..5,predicate=blue:tr/vortex,limit=1] run function blue:tr/effects/silence/emp/vortex/throw
execute as b163102f-0-f-0-1 at @s run function blue:tr/effects/silence/emp/vortex/projectile
execute unless biome ~ ~ ~ deep_dark unless entity @s[tag=blue.tr.dragon_egg] run return fail
execute unless score #.silence.ambient blue.misc matches 3.. facing entity @a[distance=0.01..16,predicate=blue:shared/is_sprinting] feet run particle sculk_charge_pop ~ ~0.5 ~ ^ ^ ^100000 0.000002 0 force @s
execute unless biome ~ ~ ~ deep_dark run return fail
execute if score #.20 blue.misc matches 7 run playsound entity.warden.heartbeat master @a[tag=!blue.tr.trim.ward] ~ ~ ~ 1.4 0.9
execute if score #.20 blue.misc matches 7 run playsound entity.warden.heartbeat master @a[tag=blue.tr.trim.ward,tag=blue.tr.ward,limit=1] ~ ~ ~ 1.8 0.9
particle sculk_charge_pop ~ ~0.8 ~ 0.25 0.3 0.25 0 1
effect give @s strength 3 0 true
effect give @s speed 3 0 true