schedule function blue:tr/delayed/5t 5t
execute if score #.tr.owner_finder blue.config matches 1 as @a[tag=!blue.trim_disabled,predicate=blue:tr/track] unless score @s blue.tr.current_trim matches 1.. at @s run function blue:tr/delayed/track
execute if score #.tr.objective_type blue.config matches 2 as @a[scores={blue.tr.RTDval=1..}] run function blue:tr/tasks/rtd/main
execute as @a[scores={Trims_Menu.BLUE=1..}] run function blue:tr/delayed/cmd/trigger