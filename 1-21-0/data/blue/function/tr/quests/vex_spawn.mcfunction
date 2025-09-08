advancement revoke @s only blue:tr/quests/vex_spawn
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_vex=false}}] run return fail
execute if score #.tr.vex_completed blue.config matches 2 unless entity @s[tag=blue.tr.vex] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players operation #.link blue.id = @s blue.id
execute if entity @e[type=vindicator,tag=blue.tr.vex_quest,predicate=blue:shared/id_link,limit=1] run return fail
execute rotated ~ 0 positioned ^ ^ ^-9 positioned over motion_blocking_no_leaves if entity @s[distance=..14] run summon vindicator ~ ~ ~ {Tags:["blue.tr.vex","blue.tr.trim.vex","blue.tr.vex_quest","smithed.entity","blue.tr.temp"],ArmorItems:[{},{id:emerald_ore},{},{}],active_effects:[{id:instant_health,amplifier:100,duration:10},{id:glowing,duration:-1},{id:invisibility,duration:-1}],CanJoinRaid:0b,HandDropChances:[0,0],HandItems:[{id:"minecraft:stone_axe"},{id:"minecraft:stone_axe"}],ArmorDropChances:[0,0,0,0],DeathTime:-40s,equipment:{mainhand:{id:stone_axe},offhand:{id:stone_axe},legs:{id:emerald_ore}},drop_chances:{offhand:0,mainhand:0,legs:0}}
execute rotated ~ 0 positioned ^ ^ ^-9 positioned over motion_blocking_no_leaves at @s[distance=14.01..] run summon vindicator ^ ^1 ^-2 {Tags:["blue.tr.vex","blue.tr.trim.vex","blue.tr.vex_quest","smithed.entity","blue.tr.temp"],ArmorItems:[{},{id:emerald_ore},{},{}],active_effects:[{id:instant_health,amplifier:100,duration:10},{id:glowing,duration:-1},{id:invisibility,duration:-1}],CanJoinRaid:0b,HandDropChances:[0,0],HandItems:[{id:"minecraft:stone_axe"},{id:"minecraft:stone_axe"}],ArmorDropChances:[0,0,0,0],DeathTime:-40s,equipment:{mainhand:{id:stone_axe},offhand:{id:stone_axe},legs:{id:emerald_ore}},drop_chances:{offhand:0,mainhand:0,legs:0}}
effect give @e[type=vindicator,tag=blue.tr.temp,distance=..12,limit=1] health_boost infinite 10 true
damage @e[type=vindicator,tag=blue.tr.temp,distance=..12,limit=1] 0 blue:tr/sacrifice by @s
scoreboard players operation @e[type=vindicator,tag=blue.tr.temp,distance=..12,limit=1] blue.id = #.link blue.id
tag @e[type=vindicator,tag=blue.tr.temp,distance=..12,limit=1] remove blue.tr.temp
schedule function blue:tr/quests/vex_loop 1t
playsound entity.vex.charge player @a ~ ~ ~ 1.5 0.5
playsound entity.vex.charge player @s ~ ~ ~ 2 0.5