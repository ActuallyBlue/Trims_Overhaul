data modify storage blue:trims temp.effects set from entity @s active_effects[{id:"minecraft:hero_of_the_village"}]
effect clear @s hero_of_the_village
execute store result score #.temp blue.misc run data get storage blue:trims temp.effects.duration
execute store result score #.temp0 blue.misc run data get storage blue:trims temp.effects.amplifier
execute if score #.sentry.charge blue.misc matches -140 run scoreboard players remove #.temp blue.misc 19200
execute if score #.temp blue.misc matches ..30 run scoreboard players remove #.temp0 blue.misc 1
execute if score #.temp0 blue.misc matches ..-1 run return fail
execute if score #.temp blue.misc matches ..30 run scoreboard players add #.temp blue.misc 24000
kill b163102f-0-10-0-1
summon area_effect_cloud ~ ~1 ~ {UUID:[I;-1318907857,16,0,1],Tags:["blue.tr.sentry_reapplication"],Duration:99,DurationOnUse:-99,Radius:3,WaitTime:0,Particle:{type:"block",block_state:"air"}}
execute store result storage blue:trims merge.aec.potion_contents.custom_effects[0].duration int 1 run scoreboard players get #.temp blue.misc
execute store result storage blue:trims merge.aec.potion_contents.custom_effects[0].amplifier int 1 run scoreboard players get #.temp0 blue.misc
data modify storage blue:trims merge.aec.Owner set from entity @s UUID
data modify entity b163102f-0-10-0-1 {} merge from storage blue:trims merge.aec