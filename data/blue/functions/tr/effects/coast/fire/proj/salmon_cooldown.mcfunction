scoreboard players remove @e[scores={blue.tr.salmon_cooldown=1..}] blue.tr.salmon_cooldown 1
tag @e[tag=blue.tr.salmon_cooldown,scores={blue.tr.salmon_cooldown=0}] remove blue.tr.salmon_cooldown
execute if entity @e[scores={blue.tr.salmon_cooldown=1..},limit=1] run schedule function blue:tr/effects/coast/fire/proj/salmon_cooldown 1t