tag @s add blue.tr.eye.anchor
execute as @a[tag=blue.tr.eye.anchor] at @s run playsound block.respawn_anchor.charge player @s ^5 ^ ^-5 1 1
execute if entity @s run schedule function blue:tr/effects/eye/emp/fear/anchor 3t
execute unless entity @s run tag @a[tag=blue.tr.eye.anchor] remove blue.tr.eye.anchor