tag @s add blue.tr.checked
scoreboard players set #.silence.reduce_armor blue.misc 300
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
execute on origin at @s run function blue:tr/effects/silence/emp/vortex/throw
kill