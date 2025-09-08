advancement revoke @s only blue:tr/tags not_sneaking
scoreboard players set #.vex.sneak blue.misc -120
execute store success score #.OnGround blue.misc if predicate blue:shared/on_ground
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
tp @s ~ ~1000 ~
execute if score #.OnGround blue.misc matches 1 positioned ^ ^ ^-2.25 positioned ~ ~1001.5 ~ summon end_crystal run damage @s 1
execute if score #.isolated blue.misc matches 1 rotated ~ -12 positioned ^ ^ ^-6.5 positioned ~ ~1001.5 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-1.5 positioned ~ ~1001.5 ~ summon end_crystal run damage @s 1
tp @s ~ ~ ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
execute unless score #.isolated blue.misc matches 1 run playsound entity.vex.charge player @a ~ ~ ~ 2 1.5
execute if score #.isolated blue.misc matches 1 run playsound entity.vex.charge player @a ~ ~ ~ 2.5 1
scoreboard players operation #.isolated_lunge blue.misc = #.isolated blue.misc