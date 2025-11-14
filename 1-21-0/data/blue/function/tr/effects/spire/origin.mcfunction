execute as @e[type=enderman,distance=..5] if function blue:tr/effects/spire/enderman run effect give @s weakness 1 10 true
execute if dimension the_end run particle end_rod ~ ~0.8 ~ 0.2 0.3 0.2 0.02 2 normal
stopsound @s hostile entity.enderman.stare
effect give @s jump_boost 2 2 true