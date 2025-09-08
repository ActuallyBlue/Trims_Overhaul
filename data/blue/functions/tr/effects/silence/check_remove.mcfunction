scoreboard players reset #.remove_Silent blue.misc
execute at @a[tag=blue.tr.mats.shard,tag=!blue.trim_disabled,limit=1] as @e[tag=blue.tr.silence.Silent,distance=21..] run function blue:tr/effects/silence/remove
execute unless entity @a[tag=blue.tr.mats.shard,tag=!blue.trim_disabled,limit=1] as @e[tag=blue.tr.silence.Silent] at @s run function blue:tr/effects/silence/remove