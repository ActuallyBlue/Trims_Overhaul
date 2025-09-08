advancement grant @s only blue:tr/actual/nautilus
scoreboard players set #.temp TrimCMDs.BLUE 52
function blue:tr/delayed/5tick/cmd/msg/wild
playsound entity.player.levelup player @a ~ ~ ~ 2 0.5
particle spore_blossom_air ~ ~2 ~ 3 2 3 0 1024 force