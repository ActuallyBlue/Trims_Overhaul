execute store result score #.temp blue.misc run random value 1..13
execute if score #.temp blue.misc matches 1..4 run return run function blue:tr/effects/eye/emp/fear/stone
execute if score #.temp blue.misc matches 5..8 run return run function blue:tr/effects/eye/emp/fear/dirt
execute if score #.temp blue.misc matches 9..10 run return run function blue:tr/effects/eye/emp/fear/glass
execute if score #.temp blue.misc matches 11..12 run return run function blue:tr/effects/eye/emp/fear/door
execute if score #.temp blue.misc matches 13 run function blue:tr/effects/eye/emp/fear/anchor