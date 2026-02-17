tag @s add blue.tr.checked
scoreboard players set #.silence.reduce_armor blue.misc 300
execute on origin if entity @s[tag=blue.tr.silence] run scoreboard players set #.temp blue.misc -633
execute unless score #.temp blue.misc matches -633 run return fail
execute store result score #.temp blue.misc run data get entity @s Item.count
execute on origin if entity @s[advancements={blue:tr/tags={tutorial_vortex=false}}] if score #.temp blue.misc matches 1 run function blue:tr/effects/silence/emp/vortex/tutorial
execute unless score #.temp blue.misc matches 32.. run return fail
execute if score #.silence.vortex_cooldown blue.misc matches 1 on origin run title @s[tag=blue.tr.silence] actionbar [{"translate":"blue.tr.vortex_name","fallback":"Vortex","color":"#3842Cf"},{"translate":"blue.tr.on_cooldown","fallback":" is on cooldown","color":"gray"}]
execute if score #.silence.vortex_cooldown blue.misc matches 1 run return run function blue:tr/item/quick_return
scoreboard players remove #.temp blue.misc 32
execute on origin run loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"item","name":"echo_shard","functions":[{"function":"set_count","count":{"type":"score","target":{"type":"fixed","name":"#.temp"},"score":"blue.misc"}}]}]}]}
execute on origin at @s run function blue:tr/effects/silence/emp/vortex/throw
kill