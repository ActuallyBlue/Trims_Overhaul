kill
playsound entity.illusioner.cast_spell player @a[x=0] ~ ~ ~ 3 0.5
playsound entity.evoker.cast_spell player @a[x=0] ~ ~ ~ 3 0.5
particle glow_squid_ink ~ ~1 ~ 0 0 0 1 128 force
particle glow_squid_ink ~ ~1 ~ 0 0 0 1 128 force @a[scores={blue.particles=1..}]
particle glow_squid_ink ~ ~1 ~ 0 0 0 1 128 force @a[scores={blue.particles=2..}]
particle scrape ~ ~1 ~ 0 0 0 25 128 force
particle scrape ~ ~1 ~ 0 0 0 25 128 force @a[scores={blue.particles=1..}]
particle scrape ~ ~1 ~ 0 0 0 25 128 force @a[scores={blue.particles=2..}]
execute as @a[gamemode=!creative,gamemode=!spectator,tag=!blue.tr.snout,distance=..16] at @s run function blue:tr/effects/snout/gamble/halt/freeze
execute as @e[type=!#blue:shared/no_ai,type=!player,tag=!smithed.strict,distance=0.01..16] at @s run function blue:tr/effects/snout/gamble/halt/freeze
summon area_effect_cloud ~ ~ ~ {Rotation:[0,180],Radius:0,Duration:400,Tags:["blue.tr.snout_center"],custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"}}
schedule function blue:tr/effects/snout/gamble/halt/loop 1t