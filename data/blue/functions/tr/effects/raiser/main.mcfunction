scoreboard players add #.raiser.ambient blue.misc 1
execute unless score #.60 blue.misc matches 15 run function blue:tr/effects/raiser/proficiency
execute as @e[tag=!smithed.strict,tag=!blue.tr.raiser_orb,distance=2.5..14.5,type=experience_orb] facing entity @s eyes positioned as @s run tp ^ ^0.025 ^-0.1
execute as @e[distance=1..15,type=experience_orb] store result entity @s Air byte 1 run scoreboard players get #.20 blue.misc
execute store success score #.piercer blue.misc if entity @s[scores={blue.tr.combat=..1200},level=20..,predicate=blue:tr/raiser_charge]
execute if score #.piercer blue.misc matches 1 anchored eyes positioned ^ ^ ^0.2 positioned ~ ~-0.4 ~ run function blue:tr/effects/raiser/piercer/charge
execute if score #.raiser.charge blue.misc matches 1.. if score #.piercer blue.misc matches 0 run function blue:tr/effects/raiser/piercer/reset
execute if score #.piercer blue.misc matches 1 run return 0
execute unless score #.raiser.ambient blue.misc matches 7.. run return 0
execute if entity @s[level=30..59] run particle entity_effect ~ ~0.4 ~ 0.15 0.3 0.15 0 1 normal @a[scores={blue.particles=1..}]
execute if entity @s[level=60..99] run particle effect ~ ~0.4 ~ 0.2 0.3 0.2 0 1 normal @a[scores={blue.particles=1..}]
execute if entity @s[level=100..] run particle effect ~ ~0.4 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=1..}]
execute if entity @s[level=100..] run particle effect ~ ~0.4 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=2..}]
scoreboard players set #.raiser.ambient blue.misc 1