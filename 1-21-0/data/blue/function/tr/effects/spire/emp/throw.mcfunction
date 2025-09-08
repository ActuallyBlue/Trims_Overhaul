execute if entity b163102f-0-e-0-1 on origin run title @s[tag=blue.tr.spire] actionbar {"translate":"blue.tr.spire_throw_cd","fallback":"You can only throw one at a time","color":"gray"}
execute if entity b163102f-0-e-0-1 run return run data modify entity @s PickupDelay set value 0s
tag @s add blue.tr.checked
execute on origin if entity @s[tag=blue.tr.spire] run scoreboard players set #.temp blue.misc -253
execute unless score #.temp blue.misc matches -253 run return fail
scoreboard players reset #.temp blue.misc
execute positioned 0.0 0.1 0.0 in overworld run tp b163102f-0-0-0-200000000 ^ ^ ^1
execute on origin anchored eyes run summon item ^ ^ ^2 {UUID:[I;-1318907857,14,0,1],Age:5700s,PickupDelay:32767s,Item:{id:"minecraft:dragon_breath"},Tags:["blue.tr.checked","blue.tr.blast-o-breath"],Motion:[0d,0d,0d]}
data modify entity b163102f-0-e-0-1 Motion set from entity b163102f-0-0-0-200000000 Pos
playsound entity.witch.throw player @a ~ ~ ~ 1.5 0.5
kill