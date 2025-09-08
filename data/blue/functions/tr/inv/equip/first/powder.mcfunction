advancement grant @s only blue:tr/actual/powder
scoreboard players set #.temp TrimCMDs.BLUE 52
function blue:tr/delayed/5tick/cmd/msg/shaper
playsound entity.generic.explode player @a ~ ~ ~ 2 0.5
particle explosion ~ ~1.2 ~ 3.5 2 3.5 0 48