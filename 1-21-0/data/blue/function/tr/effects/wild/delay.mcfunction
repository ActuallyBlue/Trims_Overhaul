execute store result score #.temp blue.misc if entity @e[scores={blue.misc=-721},distance=0.01..16,limit=8]
execute if biome ~ ~ ~ jungle run scoreboard players add #.temp blue.misc 3
execute if score #.temp blue.misc matches 1.. run effect clear @s poison
execute if score #.temp blue.misc matches 2.. run effect clear @s hunger
execute if score #.temp blue.misc matches 3.. run effect clear @s slowness
execute if score #.temp blue.misc matches 4.. run effect give @s speed 2 0 true
execute if score #.temp blue.misc matches 5.. run effect clear @s weakness
execute if score #.temp blue.misc matches 6.. run effect give @s strength 2 0 true
execute if score #.temp blue.misc matches 7.. run effect clear @s wither
execute if score #.temp blue.misc matches 8 run effect give @s saturation 1 0 true
execute on vehicle run function blue:tr/effects/wild/emp/vehicle