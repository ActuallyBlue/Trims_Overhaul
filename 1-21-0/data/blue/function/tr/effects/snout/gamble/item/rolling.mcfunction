execute unless entity @s[tag=blue.tr.ground] run return run function blue:tr/effects/snout/gamble/item/ground
execute if score #.snout.slow_gamble blue.misc matches 1.. if predicate blue:r/60c run scoreboard players remove @s[scores={blue.misc=..49}] blue.misc 1
execute store result score #.gamble blue.misc run scoreboard players add @s blue.misc 1
execute if score #.gamble blue.misc matches ..8 run return run playsound block.lever.click player @a ~ ~ ~ 0.7 1.6
execute if score #.gamble blue.misc matches 9..16 run return run playsound block.lever.click player @a ~ ~ ~ 0.7 1.5
execute if score #.gamble blue.misc matches 17..24 run return run playsound block.lever.click player @a ~ ~ ~ 0.7 1.4
execute if score #.gamble blue.misc matches 25..32 run return run playsound block.lever.click player @a ~ ~ ~ 0.7 1.3
execute if score #.gamble blue.misc matches 32..40 run return run playsound block.lever.click player @a ~ ~ ~ 0.7 1.2
execute if score #.gamble blue.misc matches 41..48 run return run playsound block.lever.click player @a ~ ~ ~ 0.7 1.1
execute if score #.gamble blue.misc matches 50 run function blue:tr/effects/snout/gamble/item/update
execute unless score #.gamble blue.misc matches 80 run return fail
scoreboard players operation #.temp blue.misc = @s blue.tr.died
execute if score @s blue.tr.combat matches 1 unless entity @s[tag=blue.tr.gamble.none] as @a[tag=blue.tr.snout,limit=1] run function blue:tr/effects/snout/gamble/item/good
execute if score @s blue.tr.combat matches 0 unless entity @s[tag=blue.tr.gamble.none] as @a[tag=blue.tr.snout,limit=1] run function blue:tr/effects/snout/gamble/item/bad
execute if predicate blue:r/2c unless entity @s[tag=blue.tr.gamble.none] as @a[tag=blue.tr.snout,limit=1] run function blue:tr/effects/snout/gamble/tunes
execute on passengers run kill
kill