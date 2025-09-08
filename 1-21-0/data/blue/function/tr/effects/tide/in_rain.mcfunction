scoreboard players set #.temp blue.misc 1
scoreboard players remove #.tide.recharge blue.misc 15
execute unless score #.swimming blue.misc matches 1 anchored eyes rotated ~ 0 run particle rain ^ ^0.3 ^ 0.2 0.2 0.2 0 1
execute if score #.swimming blue.misc matches 1 run particle rain ~ ~0.4 ~ 0.35 0.15 0.35 0 2 normal @a[scores={blue.particles=1..}]