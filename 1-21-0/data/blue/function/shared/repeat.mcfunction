schedule function blue:shared/repeat 100t
execute as @a[scores={blue.rejoin=1..}] at @s run function #blue:shared/rejoin
execute as @a unless score @s blue.id matches 1.. run function blue:shared/no_id