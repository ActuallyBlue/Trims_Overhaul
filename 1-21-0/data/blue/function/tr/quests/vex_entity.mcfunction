schedule function blue:tr/quests/vex_loop 1t
scoreboard players operation #.link blue.id = @s blue.id
execute store success score #.temp blue.misc if entity @a[predicate=blue:shared/id_link,distance=..20,limit=1]
execute if score #.temp blue.misc matches 0 on passengers run kill
execute if score #.temp blue.misc matches 0 run return run data merge entity @s {equipment:{legs:{}},ArmorItems:[{},{},{},{}],DeathTime:20s,Health:0f}
scoreboard players add #.vex.sneak blue.misc 1
execute store result score #.vex.isolation blue.misc if entity @a[predicate=blue:shared/id_link,distance=..6,limit=1]
execute unless score #.vex.isolation blue.misc matches 1 if score #.vex.isolated blue.misc matches 1 run function blue:tr/effects/vex/de-isolate
execute if score #.vex.sneak blue.misc matches ..-108 run function blue:tr/effects/vex/lunge/active
execute if score #.vex.isolation blue.misc matches 1 run function blue:tr/effects/vex/isolation
execute unless score #.vex.isolation blue.misc matches 1 run particle crit ~ ~0.9 ~ 0.25 0.3 0.25 0 1
effect clear @s strength
kill @e[type=iron_golem,distance=..5,tag=!smithed.entity,tag=!smithed.strict]
execute if score #.60 blue.misc matches 40 if score #.vex.sneak blue.misc matches -19.. run playsound entity.allay.item_thrown player @a ~ ~ ~ 2 2
execute if score #.60 blue.misc matches 40 if score #.vex.sneak blue.misc matches -19.. run playsound entity.allay.item_thrown player @a ~ ~ ~ 2 2
execute unless score #.60 blue.misc matches 59 run return fail
execute if score #.vex.sneak blue.misc matches ..0 run return fail
scoreboard players set #.vex.sneak blue.misc -120
execute facing entity @a[predicate=blue:shared/id_link,distance=..12,limit=1] eyes positioned 0.0 0 0.0 rotated ~ -16 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^1.7
data modify entity @s Motion set from entity b163102f-0-0-0-200000000 Pos
execute unless score #.vex.isolated blue.misc matches 1 run playsound entity.vex.charge player @a ~ ~ ~ 2 1.5
execute if score #.vex.isolated blue.misc matches 1 run playsound entity.vex.charge player @a ~ ~ ~ 2.5 1
scoreboard players operation #.vex.isolated_lunge blue.misc = #.vex.isolated blue.misc