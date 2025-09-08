advancement revoke @s only blue:tr/quests/vex_spawn
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_vex=false}}] run return 0
execute if score #.tr.vex_completed blue.config matches 2 unless entity @s[tag=blue.tr.vex] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
scoreboard players operation #.link blue.id = @s blue.id
execute if entity @e[type=vindicator,tag=blue.tr.vex_quest,predicate=blue:shared/id_link,limit=1] run return 0
execute rotated ~ 0 positioned ^ ^ ^-9 positioned over motion_blocking_no_leaves if entity @s[distance=..14] run summon vindicator ~ ~ ~ {Tags:["blue.tr.vex","blue.tr.trim.vex","blue.tr.vex_quest","smithed.entity","blue.tr.temp"],ArmorItems:[{},{id:emerald_ore,Count:1b},{},{}],ActiveEffects:[{Id:6,Amplifier:100,Duration:10},{Id:24,Duration:-1},{Id:14,Duration:-1}],active_effects:[{id:instant_health,amplifier:100,duration:10},{id:glowing,duration:-1},{id:invisibility,duration:-1}],CanJoinRaid:0b,ArmorDropChances:[0,0,0,0],HandDropChances:[0,0],HandItems:[{id:"minecraft:stone_axe",Count:1b},{id:"minecraft:stone_axe",Count:1b}],DeathTime:-40s}
execute rotated ~ 0 positioned ^ ^ ^-9 positioned over motion_blocking_no_leaves at @s[distance=14.01..] run summon vindicator ^ ^1 ^-2 {Tags:["blue.tr.vex","blue.tr.trim.vex","blue.tr.vex_quest","smithed.entity","blue.tr.temp"],ArmorItems:[{},{id:emerald_ore,Count:1b},{},{}],ActiveEffects:[{Id:6,Amplifier:100,Duration:10},{Id:24,Duration:-1},{Id:14,Duration:-1}],active_effects:[{id:instant_health,amplifier:100,duration:10},{id:glowing,duration:-1},{id:invisibility,duration:-1}],CanJoinRaid:0b,ArmorDropChances:[0,0,0,0],HandDropChances:[0,0],HandItems:[{id:"minecraft:stone_axe",Count:1b},{id:"minecraft:stone_axe",Count:1b}],DeathTime:-40s}
effect give @e[type=vindicator,tag=blue.tr.temp,distance=..12,limit=1] health_boost infinite 10 true
damage @e[type=vindicator,tag=blue.tr.temp,distance=..12,limit=1] 0 blue:tr/sacrifice by @s
scoreboard players operation @e[type=vindicator,tag=blue.tr.temp,distance=..12,limit=1] blue.id = #.link blue.id
tag @e[type=vindicator,tag=blue.tr.temp,distance=..12,limit=1] remove blue.tr.temp
schedule function blue:tr/quests/vex_loop 1t
playsound entity.vex.charge player @a ~ ~ ~ 1.5 0.5
playsound entity.vex.charge player @s ~ ~ ~ 2 0.5