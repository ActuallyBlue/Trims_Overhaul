tag @s add blue.tr.eye_glass
execute as @a[tag=blue.tr.eye_glass] at @s run playsound block.glass.break player @s ^5 ^ ^-5 1 1
execute if entity @s run schedule function blue:tr/effects/eye/emp/fear/glass 5t
execute unless entity @s run tag @a[tag=blue.tr.eye_glass] remove blue.tr.eye_glass