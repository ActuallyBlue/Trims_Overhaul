schedule function blue:tr/effects/rib/proj/fireball_loop 1t
execute unless block ~ ~ ~ water run return fail
playsound block.fire.extinguish player @a ~ ~ ~ 1 1.1
particle smoke ~ ~0.1 ~ 0.1 0.1 0.1 0.05 16
particle lava
kill