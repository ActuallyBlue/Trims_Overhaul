particle effect ~ ~-0.1 ~ 0.2 0.35 0.2 1 1
scoreboard players add #.raiser.charge blue.misc 2
execute if score #.raiser.charge blue.misc matches 49.. if predicate blue:tr/hold_experience_bottle run scoreboard players remove #.raiser.charge blue.misc 1
execute if score #.raiser.ambient blue.misc matches 7 run scoreboard players set #.raiser.ambient blue.misc 1
execute if score #.raiser.charge blue.misc matches 48.. store success score #.temp blue.misc unless entity @s[predicate=!blue:shared/in_old_growth,tag=!blue.tr.dragon_egg]
execute if score #.raiser.charge blue.misc matches 48.. unless predicate blue:tr/hold_experience_bottle run function blue:tr/effects/raiser/piercer/fire
execute if score #.raiser.charge blue.misc matches 48.. if score #.raiser.ambient blue.misc matches 1 positioned ~ ~0.1 ~ if predicate blue:tr/hold_experience_bottle run function blue:tr/effects/raiser/piercer/spray
execute if score #.raiser.charge blue.misc matches 36 run playsound block.enchantment_table.use player @a[distance=..14] ~ ~ ~ 1.5 1.1
execute if score #.raiser.charge blue.misc matches 12 run playsound block.enchantment_table.use player @a[distance=..12] ~ ~ ~ 1.3 0.6
execute if score #.raiser.charge blue.misc matches 1 if entity @s[advancements={blue:tr/tags={tutorial_piercer=false}}] run advancement grant @s only blue:tr/tags tutorial_piercer