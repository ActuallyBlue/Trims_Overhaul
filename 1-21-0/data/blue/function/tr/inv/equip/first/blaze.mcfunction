advancement grant @s only blue:tr/actual/blaze
scoreboard players set #.temp TrimCMDs.BLUE 52
function blue:tr/delayed/5tick/cmd/msg/rib
playsound entity.blaze.death player @a ~ ~ ~ 2 0.5
particle soul_fire_flame ~ ~0.6 ~ 2 1 2 0.05 32
particle lava ~ ~0.6 ~ 2 1 2 0 128