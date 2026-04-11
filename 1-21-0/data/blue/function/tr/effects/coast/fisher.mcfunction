advancement revoke @s only blue:tr/fisher req
function blue:tr/effects/get_luck
scoreboard players add #.temp blue.misc 15
execute if score #.temp blue.misc matches 1000.. run scoreboard players set #.temp blue.misc 1000
loot spawn ~ ~0.5 ~ fish {"pools":[{"rolls":{"min":0,"max":{"type":"score","target":{"type":"fixed","name":"#.temp"},"score":"blue.misc","scale":0.1}},"entries":[{"type":"loot_table","value":"gameplay/fishing/fish"}]}]} ~ ~ ~