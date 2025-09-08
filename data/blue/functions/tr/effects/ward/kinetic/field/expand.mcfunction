scoreboard players add #.cast blue.misc 1
execute if score #.temp blue.misc matches ..1600 run function blue:tr/effects/ward/kinetic/field/expand_low
execute if score #.temp blue.misc matches 1601.. run function blue:tr/effects/ward/kinetic/field/expand_high
execute if score #.cast blue.misc matches ..80 positioned ^ ^ ^-0.18 rotated ~-4.5 ~ run function blue:tr/effects/ward/kinetic/field/expand