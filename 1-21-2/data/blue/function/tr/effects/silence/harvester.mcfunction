advancement revoke @s only blue:tr/harvester
execute store result score #.temp blue.misc run attribute @s luck get 10
scoreboard players add #.temp blue.misc 15
scoreboard players operation #.temp blue.misc *= #.silence.bonus_shards blue.config
scoreboard players operation #.temp blue.misc /= #100 blue.misc
execute if score #.temp blue.misc matches 1000.. run scoreboard players set #.temp blue.misc 1000
loot spawn ~ ~1 ~ loot blue:tr/z/echo_shards