scoreboard players add #.wayfinder.sprint blue.misc 1
execute if score @s blue.tr.structures matches ..21 run scoreboard players remove #.wayfinder.sprint blue.misc 1
execute if score #.wayfinder.sprint blue.misc matches 4.. run effect give @s speed 1 1 true
execute if score #.wayfinder.sprint blue.misc matches 8.. run effect give @s speed 1 2 true
execute if score #.wayfinder.sprint blue.misc matches 12.. run effect give @s[scores={blue.tr.structures=22..}] speed 1 3 true
execute if score #.wayfinder.sprint blue.misc matches 16.. run effect give @s[scores={blue.tr.structures=22..}] speed 1 4 true
execute if score #.wayfinder.sprint blue.misc matches 20.. run effect give @s[scores={blue.tr.structures=32..}] speed 1 6 true
execute if score #.wayfinder.sprint blue.misc matches 24.. run effect give @s[scores={blue.tr.structures=32..}] speed 1 8 true
execute if score @s blue.tr.structures matches ..21 run scoreboard players add #.wayfinder.sprint blue.misc 1
execute unless predicate {"condition":"random_chance","chance":0.6} run return fail
execute if entity @s[tag=blue.tr.dragon_egg] run return run scoreboard players add #.wayfinder.sprint blue.misc 1
execute unless dimension overworld unless dimension the_end unless dimension the_nether run scoreboard players add #.wayfinder.sprint blue.misc 1