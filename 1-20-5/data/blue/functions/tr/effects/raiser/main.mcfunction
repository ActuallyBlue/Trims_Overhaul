scoreboard players add #.raiser.ambient blue.misc 1
execute unless score #.60 blue.misc matches 15 run function blue:tr/effects/raiser/proficiency
execute as @e[type=experience_orb,tag=!smithed.strict,tag=!blue.tr.raiser_orb,distance=2.5..14.5] facing entity @s eyes positioned as @s run tp ^ ^0.025 ^-0.1
execute as @e[type=experience_orb,distance=1..15] store result entity @s Air int 1 run scoreboard players get #.20 blue.misc
execute if entity @s[scores={blue.tr.combat=..400},level=20..,predicate=blue:tr/raiser_charge] anchored eyes positioned ^ ^ ^0.2 positioned ~ ~-0.4 ~ run return run function blue:tr/effects/raiser/piercer/charge
execute if score #.raiser.charge blue.misc matches 1.. run function blue:tr/effects/raiser/piercer/reset
execute unless score #.raiser.ambient blue.misc matches 7.. run return fail
execute if entity @s[level=30..59] run particle entity_effect{color:[0f,0f,0f,0.6f]} ~ ~0.4 ~ 0.15 0.3 0.15 0 1 normal @a[scores={blue.particles=1..}]
execute if entity @s[level=60..99] run particle entity_effect{color:[0.7f,0.7f,0.7f,0.8f]} ~ ~0.4 ~ 0.2 0.3 0.2 0 1 normal @a[scores={blue.particles=1..}]
execute if entity @s[level=100..] run particle entity_effect{color:[0.9f,0.9f,0.9f,1.0f]} ~ ~0.4 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=1..}]
execute if entity @s[level=100..] run particle entity_effect{color:[1.0f,1.0f,1.0f,1.0f]} ~ ~0.4 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=2..}]
scoreboard players set #.raiser.ambient blue.misc 1