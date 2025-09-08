execute store result storage blue:data trims.temp.id int 1 run scoreboard players operation #.temp blue.misc = @s blue.id
execute store result storage blue:data trims.temp.click int 1 run scoreboard players add #.temp blue.misc 1000
$function blue:tr/delayed/5tick/cmd/trust/$(function) with storage blue:data trims.temp