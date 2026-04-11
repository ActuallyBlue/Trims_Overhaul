schedule function blue:tr/effects/wayfinder/emp/warp/cooldown 1200t
execute unless entity @e[tag=blue.tr.wayfinder.warp,type=marker,x=0,limit=1] run schedule function blue:tr/effects/wayfinder/emp/warp/cooldown 2000t
execute at @e[tag=blue.tr.wayfinder.warp,type=marker,limit=1] run tp @s ~ ~ ~
particle enchant ~ ~9 ~ 0.2 5 0.2 0.1 300
playsound entity.enderman.teleport player @a ~ ~ ~ 1.5 0.7
execute at @e[tag=blue.tr.wayfinder.warp,type=marker,limit=1] run playsound entity.enderman.teleport player @a ~ ~ ~ 1.5 0.7
scoreboard players set #.temp blue.misc 300
execute if data storage blue:trims compass{id:"minecraft:compass"} positioned ~ ~30 ~ run function blue:tr/effects/wayfinder/emp/warp/raycast
execute if data storage blue:trims compass{id:"minecraft:compass"} at @e[tag=blue.tr.wayfinder.warp,type=marker,limit=1] positioned ~ ~30 ~ run function blue:tr/effects/wayfinder/emp/warp/raycast
execute if data storage blue:trims compass{id:"minecraft:compass"} at @e[tag=blue.tr.wayfinder.warp,type=marker,limit=1] run summon lightning_bolt ~ ~-20 ~
execute unless data storage blue:trims compass{id:"minecraft:compass"} positioned ~ ~30 ~ run function blue:tr/effects/wayfinder/emp/warp/raycast
execute unless data storage blue:trims compass{id:"minecraft:compass"} run playsound block.sculk.break player @a ~ ~ ~ 0.9 0.5
execute unless data storage blue:trims compass{id:"minecraft:compass"} at @e[tag=blue.tr.wayfinder.warp,type=marker,limit=1] run playsound block.sculk.break player @a ~ ~ ~ 0.9 0.5
execute unless data storage blue:trims compass{id:"minecraft:compass"} at @e[tag=blue.tr.wayfinder.warp,type=marker,limit=1] positioned ~ ~30 ~ run function blue:tr/effects/wayfinder/emp/warp/raycast
scoreboard players set #.wayfinder.warp_cooldown blue.misc 1
scoreboard players reset #.wayfinder.warp_charge blue.misc
item modify entity @s[gamemode=!creative] weapon.offhand blue:shared/reduce_count
playsound entity.item.break player @s ~ -1000 ~ 0 1 1
execute at @e[tag=blue.tr.wayfinder.warp,type=marker,limit=1] run forceload remove ~ ~
kill @e[tag=blue.tr.wayfinder.warp,type=marker,limit=1]