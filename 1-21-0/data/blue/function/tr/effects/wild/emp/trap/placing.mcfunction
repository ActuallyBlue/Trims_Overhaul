scoreboard players add #.wild.charge blue.misc 1
scoreboard players set #.wild.charging blue.misc 1
particle falling_spore_blossom ~ ~0.2 ~ 0.3 0.05 0.3 0 5
execute if score #.wild.charge blue.misc matches 100.. run function blue:tr/effects/wild/emp/trap/place
execute if score #.wild.charge blue.misc matches 50.. run particle falling_spore_blossom ~ ~0.2 ~ 0.3 0.06 0.3 0 12