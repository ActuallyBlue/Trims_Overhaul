scoreboard players add @s blue.tr.rtd_time 1
execute if score #.tr.random_task_defender blue.config matches 2 run scoreboard players operation @s RTD.BLUE = @s blue.tr.rtd_value
execute if score @s blue.tr.rtd_time matches 44.. run scoreboard players set @s RTD.BLUE 200
execute if score @s RTD.BLUE matches 1.. at @s run function blue:tr/tasks/rtd/check/main
execute if score #.tr.random_task_defender blue.config matches 2 run title @s subtitle ""