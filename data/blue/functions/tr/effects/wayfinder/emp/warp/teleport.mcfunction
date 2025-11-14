execute at b163102f-0-3-0-1 run tp @s ~ ~ ~
particle enchant ~ ~9 ~ 0.2 5 0.2 0.1 300
playsound entity.enderman.teleport player @a ~ ~ ~ 1.5 0.7
execute at b163102f-0-3-0-1 run playsound entity.enderman.teleport player @a ~ ~ ~ 1.5 0.7
execute if data storage blue:data trims.compass{id:"minecraft:compass"} run particle firework ~ ~9 ~ 0.2 5 0.2 0.01 30
execute if data storage blue:data trims.compass{id:"minecraft:compass"} at b163102f-0-3-0-1 run particle firework ~ ~6 ~ 0.2 5 0.2 0.01 20
execute if data storage blue:data trims.compass{id:"minecraft:compass"} at b163102f-0-3-0-1 run summon lightning_bolt ~ ~-20 ~
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} run particle sculk_soul ~ ~9 ~ 0.2 5 0.2 0.02 30
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} run playsound block.sculk.break player @a ~ ~ ~ 0.9 0.5
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} at b163102f-0-3-0-1 run playsound block.sculk.break player @a ~ ~ ~ 0.9 0.5
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} at b163102f-0-3-0-1 run particle sculk_soul ~ ~6 ~ 0.2 5 0.2 0.02 20
execute at b163102f-0-3-0-1 run particle enchant ~ ~6 ~ 0.2 4 0.2 0.1 200
schedule function blue:tr/effects/wayfinder/emp/warp/cooldown 1200t
scoreboard players set #.wayfinder.warp_cooldown blue.misc 1
scoreboard players reset #.warp_charge blue.misc
execute if data storage blue:data trims.compass{id:"minecraft:compass"} positioned ~ ~1 ~ run particle crit ^0.5 ^ ^0.2 0 0 0 0.2 32 force
execute if data storage blue:data trims.compass{id:"minecraft:compass"} at @s positioned ~ ~1 ~ run particle crit ^0.5 ^ ^0.2 0 0 0 0.2 32 force
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} positioned ~ ~1 ~ run particle enchanted_hit ^0.5 ^ ^0.2 0 0 0 0.2 48 force
execute unless data storage blue:data trims.compass{id:"minecraft:compass"} at @s positioned ~ ~1 ~ run particle enchanted_hit ^0.5 ^ ^0.2 0 0 0 0.2 48 force
item modify entity @s[gamemode=!creative] weapon.offhand blue:shared/reduce_count
playsound entity.item.break player @s ~ -1000 ~ 0 1 1
execute at b163102f-0-3-0-1 run forceload remove ~ ~
execute at b163102f-0-3-0-1 run forceload add 8 8
kill b163102f-0-3-0-1