tag @s add blue.tr.checked
execute on origin if entity @s[tag=blue.tr.silence] run scoreboard players set #.temp blue.misc -633
execute unless score #.temp blue.misc matches -633 run return 0
execute store result score #.temp blue.misc run data get entity @s Item.Count
execute on origin if entity @s[advancements={blue:tr/tags={tutorial_vortex=false}}] if score #.temp blue.misc matches 1 run function blue:tr/effects/silence/emp/vortex/tutorial
execute unless score #.temp blue.misc matches 32.. run return 0
execute if score #.silence.vortex_cooldown blue.misc matches 1 on origin run title @s[tag=blue.tr.silence] actionbar [{"translate":"blue.tr.vortex_name","fallback":"Vortex","color":"#3842Cf"},{"translate":"blue.tr.on_cooldown","fallback":" is on cooldown","color":"gray"}]
execute if score #.silence.vortex_cooldown blue.misc matches 1 run function blue:tr/item/quick_return
execute if score #.silence.vortex_cooldown blue.misc matches 1 run return 0
scoreboard players remove #.temp blue.misc 32
execute on origin run loot give @s loot blue:tr/z/vortex_refund
kill b163102f-0-f-0-1
execute positioned 0.0 0.3 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^0.9
execute on origin anchored eyes run summon item ^ ^ ^1 {UUID:[I;-1318907857,15,0,1],Age:5600s,PickupDelay:32767s,Item:{id:"minecraft:sculk",Count:1b},Tags:["blue.tr.checked","blue.tr.silence.vortex","smithed.entity"],Motion:[0d,0d,0d]}
data modify entity b163102f-0-f-0-1 Motion set from entity b163102f-0-0-0-200000000 Pos
scoreboard players set #.silence.vortex_cooldown blue.misc 1
schedule function blue:tr/effects/silence/emp/vortex/cooldown 800t
playsound entity.warden.attack_impact player @a ~ ~ ~ 2.5 0.5
execute on origin run advancement grant @s only blue:tr/tags tutorial_vortex
kill