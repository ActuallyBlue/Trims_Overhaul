tag @s remove blue.tr.new
execute if score #.temp blue.misc matches 1 store result storage blue:data trims.temp.r1 float 0.1 run random value -200..200
execute if score #.temp blue.misc matches 1 store result storage blue:data trims.temp.r2 float 0.1 run random value -200..200
execute if score #.temp blue.misc matches 0 store result storage blue:data trims.temp.r1 float 0.1 run random value -150..150
execute if score #.temp blue.misc matches 0 store result storage blue:data trims.temp.r2 float 0.1 run random value -150..150
function blue:tr/effects/coast/fire/rot-m with storage blue:data trims.temp