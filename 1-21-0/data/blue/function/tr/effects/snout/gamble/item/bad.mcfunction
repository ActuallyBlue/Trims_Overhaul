execute if score #.temp blue.misc matches 1 run function blue:tr/effects/snout/gamble/immunity
execute if score #.temp blue.misc matches 2 run function blue:tr/effects/snout/gamble/negative_xp
execute if score #.temp blue.misc matches 3 run title @s actionbar {"translate":"blue.tr.gamble.muffled","fallback":"Muffled","color":"gray"}
execute if score #.temp blue.misc matches 3 as @a[advancements={blue:tr/trust={snout=true}},distance=..12,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/snout/gamble/muffle
execute if score #.temp blue.misc matches 4 run function blue:tr/effects/snout/gamble/lightning_1
execute if score #.temp blue.misc matches 5 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 1.5
execute if score #.temp blue.misc matches 5 run title @s actionbar {"translate":"blue.tr.gamble.negative_slow","fallback":"Negative Heavy Slow","color":"gray"}
execute if score #.temp blue.misc matches 5 as @a[advancements={blue:tr/trust={snout=true}},distance=..12,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/snout/gamble/heavy_slow
execute if score #.temp blue.misc matches 6 at @s run function blue:tr/effects/snout/gamble/curse
execute if score #.temp blue.misc matches 7 run title @s actionbar {"translate":"effect.minecraft.hunger","color":"gray"}
execute if score #.temp blue.misc matches 7 as @a[advancements={blue:tr/trust={snout=true}},distance=..12,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/snout/gamble/hunger
execute if score #.temp blue.misc matches 8 at @s run function blue:tr/effects/snout/gamble/levitation
execute if score #.temp blue.misc matches 9 run function blue:tr/effects/snout/gamble/withdrawal
execute if score #.temp blue.misc matches 10 run function blue:tr/effects/snout/gamble/scramble
execute if score #.temp blue.misc matches 11..12 run function blue:tr/effects/snout/gamble/damage
execute if score #.temp blue.misc matches 13 run function blue:tr/effects/snout/gamble/punishers
execute if score #.temp blue.misc matches 14 run title @s actionbar {"translate":"effect.minecraft.wither","color":"dark_red"}
execute if score #.temp blue.misc matches 14 run function blue:tr/effects/snout/gamble/wither
execute if score #.temp blue.misc matches 15 run function blue:tr/effects/snout/gamble/explode