title @s actionbar {"translate":"blue.tr.gamble.throwing","fallback":"Throwing LVL.%s","color":"gray","with":["3"]}
schedule function blue:tr/effects/snout/gamble/throw/loop 1t
scoreboard players set #.snout.throw_buff blue.misc 800
playsound entity.witch.throw player @a ~ ~ ~ 1.5 0.5