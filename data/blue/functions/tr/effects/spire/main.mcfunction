execute if predicate blue:shared/is_sneaking if entity @s[advancements={blue:tr/tags={not_sneaking=true}}] run function blue:tr/effects/spire/sneak
execute if score #.20 blue.misc matches 15 run function blue:tr/effects/spire/delay
execute if dimension overworld if entity @s[y=450,dy=30] in the_end run function blue:tr/effects/spire/to_end
execute if score #.60 blue.misc matches 50 if score #.spire.no_gravity blue.config matches 1..2 run function blue:tr/effects/spire/check_setting
execute if score #.20 blue.misc matches 20 run particle end_rod ~ ~0.8 ~ 0.2 0.3 0.2 0.02 2 normal @a[scores={blue.particles=2..}]
execute unless entity @s[tag=blue.tr.mats.shulker] run return 0
execute if score #.20 blue.misc matches 10 run particle end_rod ~ ~0.8 ~ 0.2 0.3 0.2 0.02 2 normal @a[scores={blue.particles=1..}]
execute if score #.reversal_charge blue.misc matches ..-1 run function blue:tr/effects/spire/emp/negative_charge
execute if entity @s[x_rotation=-90..-75] unless block ~ ~-1 ~ #replaceable unless score #.reversal_charge blue.misc matches ..-1 rotated 0 0 run function blue:tr/effects/spire/emp/reversal/charge
execute if score #.reversal_charge blue.misc matches 0.. if data entity @s {OnGround:0b} run function blue:tr/effects/spire/emp/reversal/release
execute if score #.reversal_charge blue.misc matches 1.. run function blue:tr/effects/spire/emp/reversal/timer
execute as @e[tag=!blue.tr.checked,distance=..6,nbt={Item:{id:"minecraft:dragon_breath",Count:1b}},limit=1,type=item] run function blue:tr/effects/spire/emp/throw
execute as b163102f-0-e-0-1 at @s run function blue:tr/effects/spire/emp/item
execute if score #.spire.aperture blue.config matches 0 run return 0
execute if dimension the_end if entity @s[y=-40,dy=-30] positioned ~ -20 ~ run function blue:tr/effects/spire/emp/to_overworld
execute unless predicate blue:tr/aperture_res run return 0
execute store success score #.temp blue.misc if entity @s[predicate=blue:tr/elytra,nbt={FallFlying:1b}]
execute if score #.temp blue.misc matches 0 run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.015 2 normal @a[scores={blue.particles=1..}]
execute if score #.temp blue.misc matches 1 run particle end_rod ~ ~-1 ~ 0.3 1 0.3 0.015 2 normal @a[scores={blue.particles=1..}]