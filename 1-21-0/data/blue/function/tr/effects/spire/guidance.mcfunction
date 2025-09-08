scoreboard players reset #.temp blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
tp @s @s
tp ~ ~1000 ~
execute if score #.reversal_charge blue.misc matches ..0 if score #.can_plunge blue.misc matches 1 rotated ~ 0 run return run function blue:tr/effects/spire/emp/plunge/start
scoreboard players set #.spire.guidance_cooldown blue.misc 1
execute positioned ^ ^ ^-5 positioned ~ ~1001.2 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-5 positioned ~ ~1001.2 ~ summon end_crystal run damage @s 1
tp ~ ~ ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
playsound entity.phantom.flap player @a[distance=..16] ~ ~ ~ 2 1.5
playsound entity.phantom.flap player @a[distance=..16] ~ ~ ~ 2 1.5
playsound entity.phantom.flap player @a[distance=..16] ~ ~ ~ 2 1.5
execute positioned ~ ~-0.5 ~ run particle white_smoke ^ ^ ^-0.3 0.1 0.2 0.1 0.03 64
execute if dimension the_end run schedule function blue:tr/effects/spire/guidance_cooldown 70t
execute unless dimension the_end run schedule function blue:tr/effects/spire/guidance_cooldown 100t