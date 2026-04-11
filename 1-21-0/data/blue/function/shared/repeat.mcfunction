schedule function blue:shared/repeat 100t
execute as @a[scores={blue.rejoin=1..}] at @s run function #blue:shared/rejoin
execute as @a unless score @s blue.id matches 1.. run function blue:shared/check_name with entity @s
execute unless entity b163102f-0-0-0-100000000 run function blue:shared/load