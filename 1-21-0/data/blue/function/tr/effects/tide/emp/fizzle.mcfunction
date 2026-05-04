scoreboard players remove #.tide.stacks blue.misc 1
particle lava ~ ~ ~ 1 0 1 0 2 force
particle splash ~ ~ ~ 1 0 1 0 32
particle smoke ~ ~ ~ 1 0 1 0.1 32
particle smoke ~ ~ ~ 1.25 0 1.25 0 64
playsound entity.generic.extinguish_fire player @a ~ ~ ~ 1 0.75
execute on origin run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0 0.75 1
execute on origin run particle smoke ~ ~ ~ 1 0 1 0.2 64 force @s
execute on origin run function blue:tr/effects/tide/emp/display