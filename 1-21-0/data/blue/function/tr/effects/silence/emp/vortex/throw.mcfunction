tag @s add blue.tr.checked
execute on origin if entity @s[tag=blue.tr.silence] run scoreboard players set #.temp blue.misc -633
execute unless score #.temp blue.misc matches -633 run return fail
scoreboard players reset #.temp blue.misc
execute store result score #.count blue.misc run data get entity @s Item.count
execute on origin if entity @s[advancements={blue:tr/tags={tutorial_vortex=false}}] if score #.count blue.misc matches 1 run function blue:tr/effects/silence/emp/vortex/tutorial
execute unless score #.count blue.misc matches 32.. run return fail
execute if score #.silence.vortex_cooldown blue.misc matches 1 on origin run title @s[tag=blue.tr.silence] actionbar [{"translate":"blue.tr.vortex_name","fallback":"Vortex","color":"#3842Cf"},{"translate":"blue.tr.on_cooldown","fallback":" is on cooldown","color":"gray"}]
execute if score #.silence.vortex_cooldown blue.misc matches 1 run data modify entity @s PickupDelay set value 0s
scoreboard players remove #.count blue.misc 32
execute on origin run loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"echo_shard","functions":[{"function":"set_count","count":{"type":"score","target":{"type":"fixed","name":"#.count"},"score":"blue.misc"}}]}]}]}
kill b163102f-0-f-0-1
execute positioned 0.0 0.3 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^0.9
execute on origin anchored eyes run summon item ^ ^ ^1 {UUID:[I;-1318907857,15,0,1],Age:5600s,PickupDelay:32767s,Item:{id:"minecraft:sculk"},Tags:["blue.tr.checked","blue.tr.silence.vortex","smithed.entity"],Motion:[0d,0d,0d]}
data modify entity b163102f-0-f-0-1 Motion set from entity b163102f-0-0-0-200000000 Pos
scoreboard players set #.silence.vortex_cooldown blue.misc 1
playsound entity.warden.attack_impact player @a ~ ~ ~ 2.5 0.5
execute on origin run advancement grant @s only blue:tr/tags tutorial_vortex
kill