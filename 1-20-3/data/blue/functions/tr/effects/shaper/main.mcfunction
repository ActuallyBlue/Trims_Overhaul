scoreboard players add #.shaper.ambient blue.misc 1
execute if score #.shaper.ambient blue.misc matches 4.. store success score #.shaper.ambient blue.misc run particle smoke ~ ~0.5 ~ 0.2 0.3 0.2 0.015 1 normal @a[scores={blue.particles=1..}]
execute if entity @e[type=tnt,distance=..8,limit=1,nbt={fuse:1s}] run function blue:tr/effects/shaper/invul
execute if entity @e[type=tnt_minecart,distance=..8,limit=1,nbt={TNTFuse:0}] run function blue:tr/effects/shaper/invul
execute positioned ^ ^0.5 ^1.5 as @e[type=item,distance=..6,tag=!blue.tr.checked] run function blue:tr/effects/shaper/item
execute unless entity @s[tag=blue.tr.mats.powder] run return run execute positioned ^ ^0.5 ^1.5 as @e[type=item,distance=..16,tag=!blue.tr.shaper_checked,nbt={OnGround:1b,Item:{id:"minecraft:tnt",Count:1b}}] at @s run function blue:tr/effects/shaper/place
execute if score #.shaper.throw_cooldown blue.misc matches 1.. run scoreboard players remove #.shaper.throw_cooldown blue.misc 1
execute if score #.shaper.throw_cooldown blue.config matches 100.. if score #.shaper.throw_cooldown blue.misc matches 1 run function blue:tr/effects/shaper/emp/available
execute if score #.shaper.ambient blue.misc matches 2 run particle smoke ~ ~0.5 ~ 0.2 0.3 0.2 0.015 2 normal @a[scores={blue.particles=2..}]
execute as @e[type=tnt,tag=blue.tr.shaper.tnt] at @s run function blue:tr/effects/shaper/emp/entity
execute store result score #.temp blue.misc run data get entity @s FallDistance
execute if entity @s[tag=blue.tr.shaper.abs,nbt={OnGround:1b}] run function blue:tr/effects/shaper/emp/abs
execute if entity @s[tag=blue.tr.shaper.falling] run function blue:tr/effects/shaper/emp/fall
tag @s[tag=blue.tr.shaper.falling] remove blue.tr.shaper.falling
execute if score #.difficulty blue.misc matches 3.. if score #.temp blue.misc matches 48.. run tag @s add blue.tr.shaper.falling
execute if score #.difficulty blue.misc matches 2 if score #.temp blue.misc matches 32.. run tag @s add blue.tr.shaper.falling
execute if score #.difficulty blue.misc matches ..1 if score #.temp blue.misc matches 26.. run tag @s add blue.tr.shaper.falling