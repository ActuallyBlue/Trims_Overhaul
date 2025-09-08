tag @s add blue.tr.eye_door
execute as @a[tag=blue.tr.eye_door] at @s run playsound block.wooden_door.open player @s ^5 ^ ^-5 1 1
execute if entity @s run return run schedule function blue:tr/effects/eye/emp/fear/door 5t
tag @a[tag=blue.tr.eye_door] remove blue.tr.eye_door