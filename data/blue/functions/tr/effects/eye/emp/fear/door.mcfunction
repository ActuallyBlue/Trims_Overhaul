tag @s add blue.tr.eye.door
execute as @a[tag=blue.tr.eye.door] at @s run playsound block.wooden_door.open player @s ^5 ^ ^-5 1 1
execute if entity @s run schedule function blue:tr/effects/eye/emp/fear/door 5t
execute unless entity @s run tag @a[tag=blue.tr.eye.door] remove blue.tr.eye.door