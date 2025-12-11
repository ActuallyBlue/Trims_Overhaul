execute store result score #.temp blue.misc run loot spawn 0 0 0 loot blue:tr/z/rng_12
execute if score #.temp blue.misc matches 1..4 run function blue:tr/effects/eye/emp/fear/stone
execute if score #.temp blue.misc matches 5..8 run function blue:tr/effects/eye/emp/fear/dirt
execute if score #.temp blue.misc matches 9..10 run function blue:tr/effects/eye/emp/fear/glass
execute if score #.temp blue.misc matches 11 run function blue:tr/effects/eye/emp/fear/door
execute if score #.temp blue.misc matches 12 run function blue:tr/effects/eye/emp/fear/anchor