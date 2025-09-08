advancement grant @s only blue:tr/actual/wind
scoreboard players set #.temp TrimCMDs.BLUE 52
function blue:tr/delayed/5tick/cmd/msg/flow
playsound entity.breeze.inhale player @a ~ ~ ~ 2 0.5
particle cloud ~ ~1 ~ 0.6 0.7 0.6 0.2 128
effect give @s levitation 1 0 true