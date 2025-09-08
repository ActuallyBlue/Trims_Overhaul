scoreboard players add @s blue.tr.RTDtime 1
execute if entity @s[advancements={blue:tr/tags={tutorial_rtd=false}}] at @s run function blue:tr/tasks/rtd/first
execute if score #.tr.random_task_defender blue.config matches 2 run scoreboard players operation @s RTD.BLUE = @s blue.tr.RTDval
execute if score @s blue.tr.RTDtime matches 44.. run scoreboard players set @s RTD.BLUE 200
execute if score @s RTD.BLUE matches 1.. at @s run function blue:tr/tasks/rtd/check/main
execute if score #.tr.random_task_defender blue.config matches 2 run title @s subtitle ""