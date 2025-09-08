title @s actionbar {"translate":"blue.tr.gamble.lightning","fallback":"Lightning","color":"gray"}
playsound entity.lightning_bolt.impact player @a ~ ~ ~ 2 1
playsound entity.firework_rocket.twinkle_far player @a ~ ~ ~ 1.5 0.5
schedule function blue:tr/effects/snout/gamble/lightning_2 10t append
summon marker ~ ~ ~ {Tags:["blue.tr.gamble.lightning"]}
particle flash ~ ~ ~ 2 2 2 0 16
summon lightning_bolt