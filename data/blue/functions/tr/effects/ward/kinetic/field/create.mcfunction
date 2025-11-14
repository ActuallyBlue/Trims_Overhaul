scoreboard players set #.cast blue.misc 0
execute anchored feet rotated ~ 0 positioned ^2.25 ^ ^-0.1 run function blue:tr/effects/ward/kinetic/field/expand
playsound entity.minecart.riding player @a ~ ~ ~ 1 2
schedule function blue:tr/effects/ward/kinetic/field/sound 30t
execute summon marker run function blue:tr/effects/ward/kinetic/field/summon
schedule function blue:tr/effects/ward/kinetic/field/loop 1t