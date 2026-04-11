scoreboard players reset #.silence.remove_serene blue.misc
execute at @a[tag=blue.tr.mats.shard,tag=!blue.trim_disabled,limit=1] as @e[tag=blue.tr.silence.serene,distance=18..] run function blue:tr/effects/silence/remove_serene
execute unless entity @a[tag=blue.tr.mats.shard,tag=!blue.trim_disabled,limit=1] as @e[tag=blue.tr.silence.serene] at @s run function blue:tr/effects/silence/remove_serene