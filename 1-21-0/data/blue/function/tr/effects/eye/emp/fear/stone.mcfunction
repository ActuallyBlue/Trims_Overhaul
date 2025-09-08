tag @s add blue.tr.eye_stone
execute as @a[tag=blue.tr.eye_stone] at @s run playsound block.stone.break player @s ^5 ^ ^-5 1 1
execute if entity @s run return run schedule function blue:tr/effects/eye/emp/fear/stone 5t
tag @a[tag=blue.tr.eye_stone] remove blue.tr.eye_stone