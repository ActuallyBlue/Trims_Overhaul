advancement revoke @s only blue:tr/quests/vex_spawn
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_vex=false}}] run return fail
execute if score #.tr.vex_completed blue.config matches 2 unless entity @s[tag=blue.tr.vex] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
scoreboard players operation #.link blue.id = @s blue.id
execute if entity @e[tag=blue.tr.vex_passenger,predicate=blue:shared/id_link,limit=1,type=marker] run return fail
execute rotated ~ 0 positioned ^ ^ ^-9 positioned over motion_blocking_no_leaves if entity @s[distance=..14] run summon vindicator ~ ~ ~ {Tags:["blue.tr.vex","blue.tr.trim.vex","blue.tr.vex_quest","smithed.entity","blue.tr.temp"],ArmorItems:[{},{id:emerald_ore},{},{}],active_effects:[{id:instant_health,amplifier:100,duration:10},{id:glowing,duration:-1},{id:invisibility,duration:-1},{id:resistance,duration:-1}],CanJoinRaid:0b,HandDropChances:[0,0],HandItems:[{id:"minecraft:iron_axe"},{id:"minecraft:iron_axe"}],ArmorDropChances:[0,0,0,0],DeathTime:-40s,equipment:{mainhand:{id:iron_axe},offhand:{id:iron_axe},legs:{id:emerald_ore}},drop_chances:{offhand:0,mainhand:0,legs:0},DeathLootTable:""}
execute rotated ~ 0 positioned ^ ^ ^-9 positioned over motion_blocking_no_leaves at @s[distance=14.01..] run summon vindicator ^ ^1 ^-2 {Tags:["blue.tr.vex","blue.tr.trim.vex","blue.tr.vex_quest","smithed.entity","blue.tr.temp"],ArmorItems:[{},{id:emerald_ore},{},{}],active_effects:[{id:instant_health,amplifier:100,duration:10},{id:glowing,duration:-1},{id:invisibility,duration:-1},{id:resistance,duration:-1}],CanJoinRaid:0b,HandDropChances:[0,0],HandItems:[{id:"minecraft:iron_axe"},{id:"minecraft:iron_axe"}],ArmorDropChances:[0,0,0,0],DeathTime:-40s,equipment:{mainhand:{id:iron_axe},offhand:{id:iron_axe},legs:{id:emerald_ore}},drop_chances:{offhand:0,mainhand:0,legs:0},DeathLootTable:""}
summon marker ~ ~ ~ {Tags:["blue.tr.vex_passenger"]}
effect give @e[tag=blue.tr.temp,distance=..12,limit=1,type=vindicator] health_boost infinite 10 true
scoreboard players operation @e[tag=blue.tr.vex_passenger,predicate=!blue:shared/has_vehicle,distance=..1,limit=1,type=marker] blue.id = #.link blue.id
ride @e[tag=blue.tr.vex_passenger,predicate=!blue:shared/has_vehicle,distance=..1,limit=1,type=marker] mount @e[tag=blue.tr.temp,distance=..12,limit=1,type=vindicator]
execute if score #.difficulty blue.misc matches 3.. run effect give @e[tag=blue.tr.temp,distance=..12,limit=1,type=vindicator] resistance infinite 1
execute if score #.difficulty blue.misc matches 3.. run effect give @e[tag=blue.tr.temp,distance=..12,limit=1,type=vindicator] strength infinite 1
execute if score #.difficulty blue.misc matches 2 run effect give @e[tag=blue.tr.temp,distance=..12,limit=1,type=vindicator] strength infinite 0
damage @e[tag=blue.tr.temp,distance=..12,limit=1,type=vindicator] 0 blue:tr/sacrifice by @s
tag @e[tag=blue.tr.temp,distance=..12,limit=1,type=vindicator] remove blue.tr.temp
schedule function blue:tr/quests/vex_loop 1t
playsound entity.vex.charge player @a ~ ~ ~ 1.5 0.5
playsound entity.vex.charge player @s ~ ~ ~ 2 0.5