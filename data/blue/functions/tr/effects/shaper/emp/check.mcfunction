execute if score #.shaper.throw_cooldown blue.config matches -1 run data modify entity @s PickupDelay set value 0s
execute if score #.shaper.throw_cooldown blue.config matches -1 on origin run title @s actionbar {"translate":"blue.tr.shaper_throw_disabled","fallback":"Shaper's TNT throwing is disabled on this server."}
execute if score #.shaper.throw_cooldown blue.config matches -1 run return 0
execute if score #.shaper.throw_cooldown blue.misc matches 1.. on origin run title @s actionbar [{"translate":"blue.tr.controlled_demolition_name","fallback":"Controlled Demolition","color":"#8F8F8F"},{"translate":"blue.tr.on_cooldown","fallback":" is on cooldown","color":"gray"}]
execute if score #.shaper.throw_cooldown blue.misc matches 1.. run data modify entity @s PickupDelay set value 0s
execute if score #.shaper.throw_cooldown blue.misc matches 1.. run return 0
execute on origin at @s[tag=blue.tr.shaper] anchored eyes positioned ^ ^ ^0.5 positioned ~ ~-0.5 ~ run function blue:tr/effects/shaper/emp/throw
execute if score #.difficulty blue.misc matches ..2 if score #.temp blue.misc matches -1 store success score #.temp blue.misc run kill @s[predicate=!blue:r/20c]
execute if score #.difficulty blue.misc matches 3 if score #.temp blue.misc matches -1 run kill
execute if score #.temp blue.misc matches 0 run data modify entity @s PickupDelay set value 0s
scoreboard players operation #.shaper.throw_cooldown blue.misc = #.shaper.throw_cooldown blue.config
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.checked