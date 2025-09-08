title @s actionbar {"translate":"blue.tr.gamble.throwing_three","fallback":"Throwing LVL.3","color":"gray"}
schedule function blue:tr/effects/snout/gamble/throw/loop 1t
scoreboard players set #.snout.throw_buff blue.misc 800
playsound entity.witch.throw player @a ~ ~ ~ 1.5 0.5