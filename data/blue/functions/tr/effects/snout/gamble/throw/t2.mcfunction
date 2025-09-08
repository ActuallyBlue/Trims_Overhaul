title @s actionbar {"translate":"blue.tr.gamble.throwing_two","fallback":"Throwing LVL.2","color":"gray"}
execute unless score #.snout.throw_buff blue.misc matches 600.. run scoreboard players set #.snout.throw_buff blue.misc 600
schedule function blue:tr/effects/snout/gamble/throw/loop 1t
playsound entity.witch.throw player @a ~ ~ ~ 1.5 0.75