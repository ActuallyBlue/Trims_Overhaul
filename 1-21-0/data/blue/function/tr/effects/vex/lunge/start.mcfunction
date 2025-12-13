advancement revoke @s only blue:tr/tags not_sneaking
scoreboard players set #.vex.sneak blue.misc -120
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
scoreboard players operation #.vex.isolated_lunge blue.misc = #.vex.isolated blue.misc
execute if entity @s[tag=blue.tr.dragon_egg] run scoreboard players set #.vex.isolated_lunge blue.misc 1
execute store success score #.temp0 blue.misc if predicate blue:shared/on_ground
gamemode creative
tp @s ~ ~1000 ~
execute if score #.temp0 blue.misc matches 1 positioned ^ ^ ^-2.25 positioned ~ ~1001.5 ~ summon end_crystal run damage @s 1
execute if score #.vex.isolated_lunge blue.misc matches 1 rotated ~ -12 positioned ^ ^ ^-6.5 positioned ~ ~1001.5 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-1.5 positioned ~ ~1001.5 ~ summon end_crystal run damage @s 1
tp @s ~ ~ ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
execute unless score #.vex.isolated_lunge blue.misc matches 1 run playsound entity.vex.charge player @a ~ ~ ~ 2 1.5
execute if score #.vex.isolated_lunge blue.misc matches 1 run playsound entity.vex.charge player @a ~ ~ ~ 2.5 1