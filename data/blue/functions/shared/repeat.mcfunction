schedule function blue:shared/repeat 100t
execute as @a[scores={blue.rejoin=1..}] at @s run function #blue:rejoin
execute as @a unless score @s blue.id matches 1.. store result score @s blue.id run scoreboard players add .val blue.id 1