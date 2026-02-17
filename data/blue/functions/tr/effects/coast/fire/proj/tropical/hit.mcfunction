playsound entity.tropical_fish.hurt player @a
damage @s[type=!player] 3 blue:tr/fish by @a[tag=blue.tr.coast,limit=1]
damage @s[advancements={blue:tr/trust={coast=false}}] 3 blue:tr/fish by @a[tag=blue.tr.coast,limit=1]
execute if score #.temp blue.misc matches 0 run playsound entity.witch.drink player @a ~ ~ ~ 1 2
execute if score #.temp blue.misc matches 1 run playsound entity.witch.drink player @a ~ ~ ~ 2 1
execute if score #.temp blue.misc matches 0 run particle instant_effect ^ ^ ^-0.25 0.1 0.2 0.1 0.5 20
execute if score #.temp blue.misc matches 1 run particle effect ^ ^ ^-0.25 0.1 0.2 0.1 0.5 20
execute if entity @s[advancements={blue:tr/trust={coast=true}}] store success score #.temp blue.misc if score #.temp blue.misc matches 0
execute if score #.temp blue.misc matches 0 run function blue:tr/effects/coast/fire/proj/tropical/negative
execute if score #.temp blue.misc matches 1 run function blue:tr/effects/coast/fire/proj/tropical/positive
scoreboard players set #.temp blue.misc -99