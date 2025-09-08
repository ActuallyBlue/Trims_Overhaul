scoreboard players operation @s blue.tr.damage_blocked *= #3 blue.misc
execute store success score #.ward.ambient blue.misc unless score #.ward.ambient blue.misc matches 1
execute if score #.ward.ambient blue.misc matches 0 run particle dust_color_transition 0 0.2 0.5 0.65 0 0 0 ~ ~0.7 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=1..}]
execute if score #.ward.ambient blue.misc matches 1 run particle dust_color_transition 0 0.2 0.5 0.65 0 0 0 ~ ~0.7 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=1..}]
execute if score #.ward.blocking blue.misc matches 1 if entity @s[advancements={blue:tr/tags={using_shield=false}}] anchored eyes run function blue:tr/effects/ward/kinetic/release
execute if entity @s[advancements={blue:tr/tags={using_shield=true}}] anchored eyes run function blue:tr/effects/ward/kinetic/held
scoreboard players remove #.ward.health blue.misc 12
execute unless score #.ward.resort_cooldown blue.misc matches 1 if score #.ward.health blue.misc >= @s blue.health run function blue:tr/effects/ward/resort/activate
scoreboard players operation #.ward.health blue.misc = @s blue.health
scoreboard players operation @s blue.tr.damage_blocked /= #3 blue.misc
execute unless score #.20 blue.misc matches 9 run return 0
execute if biome ~ ~ ~ deep_dark run attribute @s generic.armor_toughness modifier add b163102f-0-5-0-1 "blue:tr.trim" 0.1 multiply
execute unless biome ~ ~ ~ deep_dark run attribute @s generic.armor_toughness modifier remove b163102f-0-5-0-1