particle dragon_breath ~ ~0.25 ~ 0.09 0.09 0.09 0 3
scoreboard players set #.temp blue.misc 1
execute store result entity @s Air int 1 run scoreboard players get #.20 blue.misc
execute if block ~ ~-0.5 ~ #blue:trims/passable if block ~0.5 ~ ~ #blue:trims/passable if block ~-0.5 ~ ~ #blue:trims/passable if block ~ ~ ~0.5 #blue:trims/passable if block ~ ~ ~-0.5 #blue:trims/passable if block ~ ~0.5 ~ #blue:trims/passable if block ~-0.5 ~ ~-0.5 #blue:trims/passable if block ~0.5 ~ ~-0.5 #blue:trims/passable if block ~-0.5 ~ ~0.5 #blue:trims/passable if block ~0.5 ~ ~0.5 #blue:trims/passable if block ~-0.5 ~0.5 ~-0.5 #blue:trims/passable if block ~-0.5 ~0.5 ~0.5 #blue:trims/passable if block ~-0.5 ~0.5 ~ #blue:trims/passable if block ~0.5 ~0.5 ~ #blue:trims/passable if block ~-0.5 ~-0.5 ~-0.5 #blue:trims/passable if block ~-0.5 ~-0.5 ~0.5 #blue:trims/passable if block ~-0.5 ~-0.5 ~ #blue:trims/passable if block ~0.5 ~-0.5 ~ #blue:trims/passable if block ~-0.5 ~0.5 ~-0.5 #blue:trims/passable if block ~0.5 ~0.5 ~-0.5 #blue:trims/passable if block ~-0.5 ~0.5 ~0.5 #blue:trims/passable if block ~0.5 ~0.5 ~0.5 #blue:trims/passable if block ~-0.5 ~-0.5 ~-0.5 #blue:trims/passable if block ~0.5 ~-0.5 ~-0.5 #blue:trims/passable if block ~-0.5 ~-0.5 ~0.5 #blue:trims/passable if block ~0.5 ~-0.5 ~0.5 #blue:trims/passable run scoreboard players set #.temp blue.misc -1
execute if score #.temp blue.misc matches -1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#blue:tr/no_effects,tag=!blue.tr.spire,dx=0,limit=1] run scoreboard players set #.temp blue.misc 1
execute if score #.temp blue.misc matches ..0 run return fail
playsound entity.splash_potion.break player @a ~ ~ ~ 0.8 0.75
kill
execute positioned ~-3 ~-1 ~-3 if entity @e[type=area_effect_cloud,tag=blue.tr.blast-o-breath,dx=5,dy=2,dz=5,limit=1] run return fail
summon area_effect_cloud ~ ~ ~ {Tags:["blue.tr.blast-o-breath"],"potion_contents":{"potion":"harming"},custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"},Duration:15,Radius:0.5,RadiusPerTick:0.15}
summon area_effect_cloud ~ ~ ~ {Particle:{type:"dragon_breath"},Duration:15,Radius:1.5,RadiusPerTick:0.1}
playsound entity.ender_dragon.shoot player @a ~ ~ ~ 1.8 1
playsound entity.dragon_fireball.explode player @a ~ ~ ~ 1.7 2
particle dragon_breath ~ ~0.25 ~ 0 0 0 0.1 64