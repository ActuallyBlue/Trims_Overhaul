scoreboard players reset #.exchange_channeling blue.misc
tag @a[tag=blue.tr.host.morale,distance=20.01..] remove blue.tr.host.morale
execute if score #.60 blue.misc matches 44 run function blue:tr/effects/host/effects
execute as @a[advancements={blue:tr/trust={host=true}},distance=0.01..14,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/host/morale-player
execute if score #.host.sacrifice blue.misc matches 3 run particle damage_indicator ~ ~0.5 ~ 0.4 0.4 0.4 0.4 2
execute if score #.host.sacrifice blue.misc matches 3 store success score #.host.sacrifice blue.misc run damage @s 2 blue:tr/sacrifice
scoreboard players set #.exchange_channeling blue.misc 0
execute unless score #.host.exchange_cooldown blue.misc matches 1 if predicate blue:shared/is_sneaking run function blue:tr/effects/host/exchange/channel
execute if score #.exchange_channel blue.misc matches 1.. if score #.exchange_channeling blue.misc matches 0 run function blue:tr/effects/host/exchange/cancel
execute store success score #.host.ambient blue.misc unless score #.host.ambient blue.misc matches 1
execute if score #.host.ambient blue.misc matches 0 run particle dust_color_transition{from_color:[0.9f,0.2f,0.2f],scale:0.6f,to_color:[0.1f,0f,0f]} ~ ~0.8 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=1..}]
execute if score #.host.ambient blue.misc matches 1 run particle dust_color_transition{from_color:[0.9f,0.2f,0.2f],scale:0.6f,to_color:[0.1f,0f,0f]} ~ ~0.8 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.20 blue.misc matches 15 at @a[tag=blue.tr.host.morale,scores={blue.health=..10}] run particle damage_indicator ~ ~2.25 ~ 0.2 0 0.2 0 2 force @s
execute if score @s blue.tr.combat matches -59 on attacker run function blue:tr/effects/host/guardian
execute unless score #.20 blue.misc matches 5 run return fail
execute at @a[tag=blue.tr.host.morale,scores={blue.health=..10}] run particle damage_indicator ~ ~2.25 ~ 0.2 0 0.2 0 2 force @s
attribute @s generic.max_health modifier remove blue:tr.trim
execute store result score #.temp blue.misc if entity @e[type=villager,distance=..20,limit=32]
scoreboard players operation #.temp blue.misc *= #5 blue.misc
execute as @e[type=iron_golem,distance=..22,limit=7] run scoreboard players add #.temp blue.misc 20
execute as @a[advancements={blue:tr/trust={host=true}},gamemode=!creative,gamemode=!spectator,distance=0.01..24,limit=3] run scoreboard players add #.temp blue.misc 50
execute unless entity @s[predicate=!blue:shared/in_village,tag=!blue.tr.dragon_egg] run scoreboard players add #.temp blue.misc 15
execute if score #.temp blue.misc matches 160.. store success score #.temp blue.misc run attribute @s[advancements={blue:tr/cure={7=true}}] generic.max_health modifier add blue:tr.trim 14 add_value
execute if score #.temp blue.misc matches 140.. store success score #.temp blue.misc run attribute @s[advancements={blue:tr/cure={6=true}}] generic.max_health modifier add blue:tr.trim 12 add_value
execute if score #.temp blue.misc matches 120.. store success score #.temp blue.misc run attribute @s[advancements={blue:tr/cure={5=true}}] generic.max_health modifier add blue:tr.trim 10 add_value
execute if score #.temp blue.misc matches 80.. store success score #.temp blue.misc run attribute @s[advancements={blue:tr/cure={4=true}}] generic.max_health modifier add blue:tr.trim 8 add_value
execute if score #.temp blue.misc matches 60.. store success score #.temp blue.misc run attribute @s[advancements={blue:tr/cure={3=true}}] generic.max_health modifier add blue:tr.trim 6 add_value
execute if score #.temp blue.misc matches 40.. store success score #.temp blue.misc run attribute @s[advancements={blue:tr/cure={2=true}}] generic.max_health modifier add blue:tr.trim 4 add_value
execute if score #.temp blue.misc matches 20.. store success score #.temp blue.misc run attribute @s[advancements={blue:tr/cure={1=true}}] generic.max_health modifier add blue:tr.trim 2 add_value
execute if score #.temp blue.misc matches ..0 run attribute @s generic.max_health modifier add blue:tr.trim -2 add_value