scoreboard players reset #.temp blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
scoreboard players set #.spire.guidance_cooldown blue.misc 1
gamemode creative
tp @s @s
tp @s ~ ~1000 ~
scoreboard players reset #.plunge blue.misc
execute if score #.reversal_charge blue.misc matches ..0 if score #.can_plunge blue.misc matches 1 run scoreboard players set #.plunge blue.misc -1
execute if score #.plunge blue.misc matches -1 unless score #.spire.limit_plunge blue.config matches 0 rotated ~ 0 run function blue:tr/effects/spire/emp/plunge/start
execute if score #.plunge blue.misc matches -1 if score #.spire.limit_plunge blue.config matches 0 run function blue:tr/effects/spire/emp/plunge/start
execute if score #.plunge blue.misc matches -1 run return 0
execute positioned ^ ^ ^-1 positioned ~ ~1001.2 ~ summon end_crystal run damage @s 1
execute if score #.spire.guidance_range blue.config matches 2.. positioned ^ ^ ^-6 positioned ~ ~1001.2 ~ summon end_crystal run damage @s 1
execute if score #.spire.guidance_range blue.config matches 3.. positioned ^ ^ ^-7 positioned ~ ~1001.2 ~ summon end_crystal run damage @s 1
tp @s ~ ~ ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
playsound entity.phantom.flap player @a[distance=..16] ~ ~ ~ 2 1.5
playsound entity.phantom.flap player @a[distance=..16] ~ ~ ~ 2 1.5
playsound entity.phantom.flap player @a[distance=..16] ~ ~ ~ 2 1.5
execute positioned ~ ~-0.5 ~ run particle cloud ^ ^ ^-0.3 0.1 0.2 0.1 0.05 8
execute if dimension the_end run schedule function blue:tr/effects/spire/guidance_cooldown 70t
execute unless dimension the_end run schedule function blue:tr/effects/spire/guidance_cooldown 100t