tag @s add blue.tr.eye.glass
execute as @a[tag=blue.tr.eye.glass] at @s run playsound block.glass.break player @s ^5 ^ ^-5 1 1
execute if entity @s run return run schedule function blue:tr/effects/eye/emp/fear/glass 5t
tag @a[tag=blue.tr.eye.glass] remove blue.tr.eye.glass