title @s actionbar {"translate":"blue.tr.gamble.explosion","fallback":"Explosion","color":"dark_red"}
execute as @e[type=!#blue:tr/no_effects,distance=..16] run damage @s 10 magic by @a[tag=blue.tr.snout,limit=1]
playsound entity.generic.explode player @a ~ ~ ~ 1 1.25
particle flame ~ ~ ~ 0 0 0 1 128
particle explosion_emitter