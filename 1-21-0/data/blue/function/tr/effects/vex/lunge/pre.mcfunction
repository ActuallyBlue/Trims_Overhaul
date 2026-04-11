advancement revoke @s only blue:tr/tags not_sneaking
scoreboard players set #.vex.sneak blue.misc 0
execute if score #.vex.quick_lunge blue.config matches 1 rotated ~ -20 run function blue:tr/effects/vex/lunge/start