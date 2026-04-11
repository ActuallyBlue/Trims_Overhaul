tag @s add blue.tr.eye.dirt
execute as @a[tag=blue.tr.eye.dirt] at @s run playsound block.grass.break player @s ^-5 ^ ^-5 1 1
execute if entity @s run return run schedule function blue:tr/effects/eye/emp/fear/dirt 5t
tag @a[tag=blue.tr.eye.dirt] remove blue.tr.eye.dirt