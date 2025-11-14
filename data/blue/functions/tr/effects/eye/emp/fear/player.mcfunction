execute if score #.eye.view_fear blue.misc matches 1.. run scoreboard players add @s blue.tr.fear 20
scoreboard players remove @s[advancements={blue:tr/trust={eye=true}}] blue.tr.fear 10
scoreboard players set @s[scores={blue.tr.fear=..19}] blue.tr.fear 20
execute store result score #.val blue.misc run scoreboard players remove @s blue.tr.fear 20
scoreboard players operation #.val blue.misc /= #60 blue.misc
scoreboard players add #.val blue.misc 1
execute store result score #.mult blue.misc run loot spawn 0 0 0 loot blue:tr/z/rng_60
execute if score #.mult blue.misc >= #.val blue.misc run return 0
scoreboard players operation #.temp0 blue.misc = @s blue.tr.fear
scoreboard players operation #.temp0 blue.misc /= #10 blue.misc
scoreboard players operation @s blue.tr.fear -= #.temp0 blue.misc
execute store result score #.temp blue.misc run loot spawn 0 0 0 loot blue:tr/z/rng_60
scoreboard players operation #.temp0 blue.misc /= #2 blue.misc
scoreboard players operation #.temp blue.misc += #.temp0 blue.misc
scoreboard players operation @s blue.tr.fear -= #.temp blue.misc
execute if score @s blue.tr.fear matches ..-1 run scoreboard players set @s blue.tr.fear 0
execute if score #.temp blue.misc matches ..44 at @s run function blue:tr/effects/eye/emp/fear/low
execute if score #.temp blue.misc matches 45.. at @s run function blue:tr/effects/eye/emp/fear/high