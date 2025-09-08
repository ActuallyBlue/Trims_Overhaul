execute store result score #.block blue.misc run random value 1..13
execute if score #.block blue.misc matches 1..4 run function blue:tr/effects/eye/emp/fear/stone
execute if score #.block blue.misc matches 5..8 run function blue:tr/effects/eye/emp/fear/dirt
execute if score #.block blue.misc matches 9..10 run function blue:tr/effects/eye/emp/fear/glass
execute if score #.block blue.misc matches 11..12 run function blue:tr/effects/eye/emp/fear/door
execute if score #.block blue.misc matches 13 run function blue:tr/effects/eye/emp/fear/anchor