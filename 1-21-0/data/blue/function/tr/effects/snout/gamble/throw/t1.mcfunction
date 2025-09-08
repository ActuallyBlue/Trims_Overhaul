title @s actionbar {"translate":"blue.tr.gamble.throwing_one","fallback":"Throwing LVL.1","color":"gray"}
execute unless score #.snout.throw_buff blue.misc matches 400.. run scoreboard players set #.snout.throw_buff blue.misc 400
schedule function blue:tr/effects/snout/gamble/throw/loop 1t
playsound entity.witch.throw player @a ~ ~ ~ 1.5 1