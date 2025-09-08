advancement grant @s only blue:tr/actual/star
scoreboard players set #.temp TrimCMDs.BLUE 53
function blue:tr/delayed/5tick/cmd/msg/wayfinder
playsound block.end_portal.spawn player @a ~ ~ ~ 2 1.4
particle enchant ~ ~2 ~ 0.3 0.6 0.3 30 1024