advancement grant @s only blue:tr/display/ender_eye
scoreboard players set #.temp Trims_Menu.BLUE 52
function blue:tr/delayed/cmd/msg/eye
particle glow ~ ~1 ~ 6 4 6 0 512
playsound block.end_portal_frame.fill player @a ~ ~ ~ 2 1
playsound block.end_portal_frame.fill player @a ~ ~ ~ 2 0.75
playsound block.end_portal_frame.fill player @a ~ ~ ~ 2 0.5