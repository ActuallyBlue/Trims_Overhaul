scoreboard players add #.shaper.ambient blue.misc 1
execute if score #.shaper.ambient blue.misc matches 4.. store success score #.shaper.ambient blue.misc run particle smoke ~ ~0.5 ~ 0.2 0.3 0.2 0.015 1 normal @a[scores={blue.particles=1..}]
execute if entity @e[distance=..8,limit=1,nbt={fuse:1s},type=tnt] run function blue:tr/effects/shaper/invul
execute if entity @e[distance=..8,limit=1,nbt={fuse:1},type=tnt_minecart] run function blue:tr/effects/shaper/invul
execute positioned ^ ^0.5 ^1.5 as @e[distance=..6,tag=!blue.tr.checked,predicate=blue:tr/shaper_item,type=item] run function blue:tr/effects/shaper/item
execute unless entity @s[tag=blue.tr.mats.powder] run return run execute positioned ^ ^0.5 ^1.5 as @e[distance=..12,tag=!blue.tr.shaper_checked,predicate=blue:shared/on_ground,type=item] if items entity @s contents tnt[count=1] at @s run function blue:tr/effects/shaper/place
execute if score #.shaper.throw_cooldown blue.misc matches 1.. run scoreboard players remove #.shaper.throw_cooldown blue.misc 1
execute if score #.shaper.throw_cooldown blue.config matches 100.. if score #.shaper.throw_cooldown blue.misc matches 1 run function blue:tr/effects/shaper/emp/available
execute if score #.shaper.ambient blue.misc matches 2 run particle smoke ~ ~0.5 ~ 0.2 0.3 0.2 0.015 2 normal @a[scores={blue.particles=2..}]
execute if entity @s[tag=blue.tr.shaper.abs,predicate=blue:shared/on_ground] run function blue:tr/effects/shaper/emp/abs
execute if entity @s[tag=blue.tr.shaper.falling] run function blue:tr/effects/shaper/emp/fall
execute as @e[tag=blue.tr.shaper.tnt,type=tnt] at @s run function blue:tr/effects/shaper/emp/entity
tag @s[tag=blue.tr.shaper.falling] remove blue.tr.shaper.falling
execute if score #.difficulty blue.misc matches 3.. run return run tag @s[predicate=blue:tr/high_fall] add blue.tr.shaper.falling
execute if score #.difficulty blue.misc matches 2 run return run tag @s[predicate=blue:tr/mid_fall] add blue.tr.shaper.falling
execute if score #.difficulty blue.misc matches ..1 run tag @s[predicate=blue:tr/low_fall] add blue.tr.shaper.falling