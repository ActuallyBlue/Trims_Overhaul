title @s actionbar {"translate":"subtitles.entity.generic.explode","color":"dark_red"}
execute as @e[type=!#blue:shared/no_ai,distance=..4] run damage @s 14 magic by @a[tag=blue.tr.snout,limit=1]
execute as @e[type=!#blue:shared/no_ai,distance=4.01..8] run damage @s 12 magic by @a[tag=blue.tr.snout,limit=1]
execute as @e[type=!#blue:shared/no_ai,distance=8.01..16] run damage @s 10 magic by @a[tag=blue.tr.snout,limit=1]
playsound entity.generic.explode player @a ~ ~ ~ 1 1.25
particle flame ~ ~ ~ 0 0 0 1 128
particle explosion_emitter