title @s actionbar {"translate":"blue.tr.gamble.halt","fallback":"Halt","color":"dark_green"}
playsound entity.illusioner.prepare_blindness player @a[x=0] ~ ~ ~ 3 1
playsound entity.illusioner.prepare_mirror player @a[x=0] ~ ~ ~ 3 1.25
schedule function blue:tr/effects/snout/gamble/halt/delay 20t
summon marker ~ ~ ~ {Tags:["blue.tr.gamble.halt_marker"]}
particle glow ~ ~1 ~ 0.3 1 0.3 0 64