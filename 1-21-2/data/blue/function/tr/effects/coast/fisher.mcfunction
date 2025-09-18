advancement revoke @s only blue:tr/fisher req
execute store result score #.temp blue.misc run attribute @s luck get 10
scoreboard players add #.temp blue.misc 15
execute if score #.temp blue.misc matches 1000.. run scoreboard players set #.temp blue.misc 1000
loot give @s fish blue:tr/z/fish ~ ~ ~