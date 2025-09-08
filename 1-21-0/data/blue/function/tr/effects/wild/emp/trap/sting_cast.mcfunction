particle happy_villager
scoreboard players add #.temp blue.misc 1
execute if score #.temp blue.misc matches 30.. run kill
execute unless score #.temp blue.misc matches 30.. positioned ~-0.5 ~-0.5 ~-0.5 as @p[dx=0,advancements={blue:tr/trust={wild=false}}] positioned ~0.25 ~0.25 ~0.25 at @s[dx=0] run function blue:tr/effects/wild/emp/trap/stung
execute unless score #.temp blue.misc matches 30.. positioned ~ ~1 ~ facing entity @p[distance=..4,advancements={blue:tr/trust={wild=false}}] eyes positioned ~ ~-1 ~ positioned ^ ^0.1 ^0.1 run function blue:tr/effects/wild/emp/trap/sting_cast