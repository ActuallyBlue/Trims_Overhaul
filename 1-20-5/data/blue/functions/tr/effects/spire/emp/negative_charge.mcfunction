scoreboard players add #.reversal_charge blue.misc 1
execute if score #.reversal_charge blue.misc matches -1 run function blue:tr/effects/spire/emp/available_notif
execute if score #.can_plunge blue.misc matches 1 run particle enchanted_hit ~ ~ ~ 0.2 0.3 0.2 0.7 10
execute if score #.can_plunge blue.misc matches 1 run scoreboard players reset #.cast blue.misc
execute if score #.can_plunge blue.misc matches 1 rotated ~ 20 run function blue:tr/effects/spire/emp/plunge/cast
execute if score #.can_plunge blue.misc matches 0 run particle end_rod ~ ~0.7 ~ 0.1 0.3 0.1 0.02 2
execute if score #.reversal_charge blue.misc matches -600..-549 as @a[distance=0.01..48,tag=!blue.tr.spire] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=area_effect_cloud,tag=blue.tr.plunge_aec,dy=2,limit=1] run effect give @s instant_damage 1 0 true
execute if score #.reversal_charge blue.misc matches -600..-549 as @e[type=!#blue:tr/peaceful,type=!player,distance=0.01..48] at @s positioned ~-0.5 ~-1 ~-0.5 if entity @e[type=area_effect_cloud,tag=blue.tr.plunge_aec,dy=2,limit=1] run damage @s 7 magic
execute unless score #.reversal_charge blue.misc matches ..-600 run return fail
effect give @s resistance 1 10 true
particle dragon_breath ~ ~0.7 ~ 0.3 0.3 0.3 0.02 3 force
execute if score #.last_reversal_charge blue.misc matches 40.. run particle dragon_breath ~ ~0.7 ~ 0.35 0.35 0.35 0.02 4 normal @a[scores={blue.particles=1..}]
execute if score #.last_reversal_charge blue.misc matches 50.. run particle dragon_breath ~ ~0.7 ~ 0.4 0.4 0.4 0.02 5 normal @a[scores={blue.particles=1..}]
execute if score #.last_reversal_charge blue.misc matches 70.. run particle dragon_breath ~ ~0.7 ~ 0.45 0.45 0.45 0.02 6
particle end_rod ~ ~0.7 ~ 0.4 0.4 0.4 0.02 1
execute if block ~ ~-1 ~ #replaceable run return fail
scoreboard players reset #.spire.guidance_cooldown blue.misc
schedule clear blue:tr/effects/spire/guidance_cooldown
scoreboard players set #.reversal_charge blue.misc -600
execute if score #.last_reversal_charge blue.misc matches ..54 run return fail
execute as @e[type=!#blue:tr/peaceful,distance=0.01..24] run damage @s 7 magic by @a[tag=blue.tr.spire,limit=1]
summon area_effect_cloud ~ ~ ~ {Tags:["blue.tr.plunge_aec"],Particle:{type:"witch"},Duration:30,Radius:3,RadiusPerTick:0.5}
playsound entity.ender_dragon.shoot player @a ~ ~ ~ 3 0.5
playsound entity.dragon_fireball.explode player @a ~ ~ ~ 2.9 1
particle dragon_breath ~ ~0.25 ~ 0 0 0 0.4 512