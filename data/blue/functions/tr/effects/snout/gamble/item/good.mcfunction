execute if score #.temp blue.misc matches 1 run function blue:tr/effects/snout/gamble/glow_burst
execute if score #.temp blue.misc matches 2 run function blue:tr/effects/snout/gamble/positive_xp
execute if score #.temp blue.misc matches 3..6 run function blue:tr/effects/snout/gamble/effects
execute if score #.temp blue.misc matches 7 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 1.5
execute if score #.temp blue.misc matches 7 run title @s actionbar {"translate":"blue.tr.gamble.positive_slow","fallback":"Positive Heavy Slow","color":"gray"}
execute if score #.temp blue.misc matches 7 as @a[advancements={blue:tr/trust={snout=false}},distance=..12,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/snout/gamble/heavy_slow
execute if score #.temp blue.misc matches 8 run function blue:tr/effects/snout/gamble/apple
execute if score #.temp blue.misc matches 9 run title @s actionbar {"translate":"effect.minecraft.saturation","color":"gray"}
execute if score #.temp blue.misc matches 9 as @a[advancements={blue:tr/trust={snout=true}},distance=..12,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/snout/gamble/saturation
execute if score #.temp blue.misc matches 10 run function blue:tr/effects/snout/gamble/throw/t1
execute if score #.temp blue.misc matches 11 run function blue:tr/effects/snout/gamble/throw/t2
execute if score #.temp blue.misc matches 12 run function blue:tr/effects/snout/gamble/throw/t3
execute if score #.temp blue.misc matches 13 if entity @s[distance=..16] run function blue:tr/effects/snout/gamble/overlord
execute if score #.temp blue.misc matches 14 run function blue:tr/effects/snout/gamble/halt/start
execute if score #.temp blue.misc matches 15 run function blue:tr/effects/snout/gamble/axe/start