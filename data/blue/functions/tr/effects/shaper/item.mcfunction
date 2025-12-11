data modify storage blue:trims item.Item set from entity @s Item
execute unless data storage blue:trims item.Item{Count:1b} run return 0
data modify entity b163102f-0-0-0-100000000 HandItems[0] set from storage blue:trims item.Item
execute as b163102f-0-0-0-100000000 store success score #.temp blue.misc if predicate blue:tr/hold_tnt
execute if score #.temp blue.misc matches 1 unless score #.shaper.throw_cooldown blue.config matches -1 run function blue:tr/effects/shaper/emp/check
execute on origin run return 0
execute positioned ^ ^-0.5 ^-1.5 if entity @a[distance=..0.01,predicate=blue:shared/is_sneaking,limit=1] at @s as b163102f-0-0-0-100000000 if predicate blue:tr/undermine if block ~ ~-1 ~ #blue:trims/undermine run fill ~ ~-1 ~ ~ ~-1 ~ air destroy