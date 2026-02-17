scoreboard players operation #.temp blue.misc = @s blue.tr.damage_blocked
execute if score #.temp blue.misc matches ..1201 unless score @s blue.misc matches 5.. as @a[scores={blue.tr.current_trim=14},predicate=blue:shared/is_sneaking,distance=..16,limit=1] positioned as @s rotated ~ ~-20 run function blue:tr/effects/ward/kinetic/barrier/motion
execute unless score #.temp blue.misc matches ..1201 unless score @s blue.misc matches 3.. as @a[scores={blue.tr.current_trim=14},predicate=blue:shared/is_sneaking,distance=..16,limit=1] positioned as @s rotated ~ ~-20 run function blue:tr/effects/ward/kinetic/barrier/motion
stopsound @a[distance=..24] player entity.minecart.riding
execute on passengers run kill
particle explosion
kill