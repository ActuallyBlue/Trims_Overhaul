title @s actionbar {"translate":"blue.tr.gamble.withdrawal","fallback":"Withdrawal","color":"gray"}
schedule function blue:tr/effects/snout/gamble/withdrawal_loop 1t
scoreboard players set #.snout.withdrawal blue.misc 800
playsound block.dispenser.launch player @a ~ ~ ~ 1.5 0.5