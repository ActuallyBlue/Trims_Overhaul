tag @s add blue.tr.eye_anchor
execute as @a[tag=blue.tr.eye_anchor] at @s run playsound block.respawn_anchor.charge player @s ^5 ^ ^-5 1 1
execute if entity @s run return run schedule function blue:tr/effects/eye/emp/fear/anchor 3t
tag @a[tag=blue.tr.eye_anchor] remove blue.tr.eye_anchor