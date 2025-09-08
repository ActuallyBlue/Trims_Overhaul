advancement revoke @s only blue:tr/harvester
execute store result score #.temp blue.misc run attribute @s luck get 10
scoreboard players add #.temp blue.misc 21
execute if score #.temp blue.misc matches 500.. run scoreboard players set #.temp blue.misc 500
loot spawn ~ ~1 ~ loot blue:tr/z/echo_shards