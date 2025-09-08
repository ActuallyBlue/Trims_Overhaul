scoreboard players remove @s blue.tr.fear 1
execute if score #.eye.two_tick blue.misc matches 1 run scoreboard players remove @s[advancements={blue:tr/trust={eye=true}}] blue.tr.fear 1
execute store result score #.temp blue.misc run scoreboard players operation #.val blue.misc = @s blue.tr.fear
scoreboard players operation #.val blue.misc *= #10000 blue.misc
scoreboard players add #.temp blue.misc 1000
scoreboard players operation #.val blue.misc /= #.temp blue.misc
execute unless predicate {condition:"random_chance",chance:{min:0,max:{type:"score",target:{type:"fixed",name:"#.val"},score:"blue.misc",scale:0.000005}}} run return fail
scoreboard players operation #.temp0 blue.misc = @s blue.tr.fear
scoreboard players operation #.temp0 blue.misc /= #10 blue.misc
scoreboard players operation @s blue.tr.fear -= #.temp0 blue.misc
execute store result score #.temp blue.misc run random value 0..60
scoreboard players operation #.temp0 blue.misc /= #2 blue.misc
scoreboard players operation #.temp blue.misc += #.temp0 blue.misc
execute if score #.temp blue.misc matches 59.. store result score #.temp blue.misc run random value 45..60
scoreboard players operation @s blue.tr.fear -= #.temp blue.misc
execute if score @s blue.tr.fear matches ..-1 run scoreboard players set @s blue.tr.fear 0
execute if score #.temp blue.misc matches ..44 at @s run function blue:tr/effects/eye/emp/fear/low
execute if score #.temp blue.misc matches 45.. at @s run function blue:tr/effects/eye/emp/fear/high