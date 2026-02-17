scoreboard players reset #.remove_NoGravity blue.misc
execute at @a[tag=blue.tr.mats.shulker,tag=!blue.trim_disabled,limit=1] as @e[tag=blue.tr.spire.NoGravity] run function blue:tr/effects/spire/remove_no-gravity
execute unless entity @a[tag=blue.tr.mats.shulker,tag=!blue.trim_disabled,limit=1] as @e[tag=blue.tr.spire.NoGravity] run function blue:tr/effects/spire/remove_no-gravity