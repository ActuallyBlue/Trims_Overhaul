scoreboard players reset #.temp blue.misc
execute on owner if entity @s[tag=blue.tr.wild] run scoreboard players set #.temp blue.misc -9663
execute unless score #.temp blue.misc matches -9663 run return 9
effect give @s regeneration infinite 0 true
effect give @s resistance infinite 1 true
effect give @s[type=!wolf,type=!cat,type=!parrot] resistance infinite 2 true
effect give @s[type=parrot] fire_resistance infinite 0 true
effect give @s[type=parrot] water_breathing infinite 0 true
effect give @s[type=wolf] strength infinite 1 true
effect give @s[type=wolf] speed infinite 0 true
effect give @s[type=cat] speed infinite 1 true
scoreboard players set @s blue.misc -721