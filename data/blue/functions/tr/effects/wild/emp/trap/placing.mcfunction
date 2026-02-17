execute summon area_effect_cloud store success score #.temp blue.misc run data modify storage blue:trims wild.Pos set from entity @s Pos
execute if score #.temp blue.misc matches 1 run return 0
scoreboard players add #.wild.charge blue.misc 2
execute if score @s blue.tr.combat matches ..0 run scoreboard players remove #.wild.charge blue.misc 1
scoreboard players set #.wild.charging blue.misc 1
particle falling_spore_blossom ~ ~0.2 ~ 0.25 0.05 0.25 0 2
execute if score #.wild.charge blue.misc matches 20 run title @s actionbar [{"text":"||","color":"green"},{"text":"||||||||||||||||||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 40 run title @s actionbar [{"text":"||||","color":"green"},{"text":"||||||||||||||||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 60 run title @s actionbar [{"text":"||||||","color":"green"},{"text":"||||||||||||||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 80 run title @s actionbar [{"text":"||||||||","color":"green"},{"text":"||||||||||||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 100 run title @s actionbar [{"text":"||||||||||","color":"green"},{"text":"||||||||||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 120 run title @s actionbar [{"text":"||||||||||||","color":"green"},{"text":"||||||||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 140 run title @s actionbar [{"text":"||||||||||||||","color":"green"},{"text":"||||||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 160 run title @s actionbar [{"text":"||||||||||||||||","color":"green"},{"text":"||||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 180 run title @s actionbar [{"text":"||||||||||||||||||","color":"green"},{"text":"||","color":"dark_green"}]
execute if score #.wild.charge blue.misc matches 200.. run function blue:tr/effects/wild/emp/trap/place
execute if score #.wild.charge blue.misc matches 100.. run particle falling_spore_blossom ~ ~0.2 ~ 0.25 0.06 0.25 0 6
execute if score #.wild.charge blue.misc matches 100.. run particle composter ~ ~0.1 ~ 0.25 0.05 0.25 0 1