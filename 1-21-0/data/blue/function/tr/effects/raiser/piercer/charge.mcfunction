scoreboard players add #.raiser.charge blue.misc 1
execute if score #.raiser.charge blue.misc matches 1 if entity @s[advancements={blue:tr/tags={tutorial_piercer=false}}] run advancement grant @s only blue:tr/tags tutorial_piercer
execute if score #.raiser.charge blue.misc matches 12 run playsound block.enchantment_table.use player @a[distance=..12] ~ ~ ~ 1.3 0.6
execute if score #.raiser.charge blue.misc matches 24 run playsound block.enchantment_table.use player @a[distance=..13] ~ ~ ~ 1.45 0.75
execute if score #.raiser.charge blue.misc matches 36 run playsound block.enchantment_table.use player @a[distance=..14] ~ ~ ~ 1.5 1.1
execute if score #.raiser.charge blue.misc matches 48.. store success score #.temp blue.misc if predicate blue:tr/old_growth
execute if score #.raiser.charge blue.misc matches 48.. unless items entity @s weapon experience_bottle run function blue:tr/effects/raiser/piercer/fire
execute if score #.raiser.charge blue.misc matches 48.. if score #.raiser.ambient blue.misc matches 7 positioned ~ ~0.1 ~ if items entity @s weapon experience_bottle run function blue:tr/effects/raiser/piercer/spray
execute if score #.raiser.ambient blue.misc matches 7 run scoreboard players set #.raiser.ambient blue.misc 1
particle effect ~ ~-0.1 ~ 0.3 0.3 0.3 1 1