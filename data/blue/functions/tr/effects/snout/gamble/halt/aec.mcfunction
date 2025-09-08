scoreboard players operation #.link blue.id = @s blue.id
execute as @a[predicate=blue:shared/id_link,limit=1] run function blue:tr/effects/snout/gamble/halt/player
execute if score #.temp blue.tr.combat matches -1.. run kill