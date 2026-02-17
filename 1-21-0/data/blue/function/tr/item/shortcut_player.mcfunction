execute if predicate blue:shared/is_sneaking run return run scoreboard players set #.temp blue.misc -9912
execute if score @s blue.tr.current_trim matches 18 store result score #.temp blue.misc run clear @s wind_charge 0
execute if score @s blue.tr.current_trim matches 18 if score #.temp blue.misc matches 60.. run clear @s wind_charge 60
execute if score @s blue.tr.current_trim matches 18 if score #.temp blue.misc matches 60.. anchored eyes rotated ~ 0 run summon item ^ ^-0.3 ^ {Tags:["blue.tr.fake_owner"],Item:{id:"minecraft:wind_charge",count:60},PickupDelay:20s}
execute if score @s blue.tr.current_trim matches 17 store success score #.temp blue.misc run clear @s copper_block 1
execute if score @s blue.tr.current_trim matches 17 if score #.temp blue.misc matches 1 anchored eyes rotated ~ 0 run summon item ^ ^-0.3 ^ {Tags:["blue.tr.fake_owner"],Item:{id:"minecraft:copper_block"},PickupDelay:20s}
execute if score @s blue.tr.current_trim matches 11 store success score #.temp blue.misc run clear @s dragon_breath 1
execute if score @s blue.tr.current_trim matches 11 if score #.temp blue.misc matches 1 anchored eyes rotated ~ 0 run summon item ^ ^-0.3 ^ {Tags:["blue.tr.fake_owner"],Item:{id:"minecraft:dragon_breath"},PickupDelay:20s}
execute if score @s blue.tr.current_trim matches 10 store result score #.temp blue.misc run clear @s gold_block 0
execute if score @s blue.tr.current_trim matches 10 if score #.temp blue.misc matches 16.. run clear @s gold_block 16
execute if score @s blue.tr.current_trim matches 10 if score #.temp blue.misc matches 16.. anchored eyes rotated ~ 0 run summon item ^ ^-0.3 ^ {Tags:["blue.tr.fake_owner"],Item:{id:"minecraft:gold_block",count:16},PickupDelay:20s}
execute if score @s blue.tr.current_trim matches 9 store result score #.temp blue.misc run clear @s echo_shard 0
execute if score @s blue.tr.current_trim matches 9 if score #.temp blue.misc matches 32.. run clear @s echo_shard 32
execute if score @s blue.tr.current_trim matches 9 if score #.temp blue.misc matches 32.. anchored eyes rotated ~ 0 run summon item ^ ^-0.3 ^ {Tags:["blue.tr.fake_owner"],Item:{id:"minecraft:echo_shard",count:32},PickupDelay:20s}
execute if score @s blue.tr.current_trim matches 8 store success score #.temp blue.misc run clear @s tnt 1
execute if score @s blue.tr.current_trim matches 8 if score #.temp blue.misc matches 1 anchored eyes rotated ~ 0 run summon item ^ ^-0.3 ^ {Tags:["blue.tr.fake_owner"],Item:{id:"minecraft:tnt"},PickupDelay:20s}
execute if score @s blue.tr.current_trim matches 1 store success score #.temp blue.misc run clear @s cod 1
execute if score @s blue.tr.current_trim matches 1 if score #.temp blue.misc matches 1 anchored eyes rotated ~ 0 run summon item ^ ^-0.3 ^ {Tags:["blue.tr.fake_owner"],Item:{id:"minecraft:cod"},PickupDelay:20s}
execute anchored eyes positioned 0.0 0.15 0.0 positioned ^ ^ ^0.3 summon marker run function blue:shared/shootfacing
data modify storage blue:trims merge.shortcut.Motion set from storage blue:shared Pos
data modify storage blue:trims merge.shortcut.Thrower set from entity @s UUID
execute anchored eyes positioned ^ ^-0.3 ^ run data modify entity @e[type=item,distance=..1,tag=blue.tr.fake_owner,limit=1] {} merge from storage blue:trims merge.shortcut