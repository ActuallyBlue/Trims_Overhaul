title @s actionbar {"translate":"blue.tr.gamble.scramble","fallback":"Scramble","color":"gray"}
execute at @a[distance=..16,gamemode=!creative,gamemode=!spectator] run summon marker ~ ~ ~ {Tags:["blue.tr.gamble.scramble"]}
execute at @e[type=!#blue:shared/no_effects,type=!player,distance=..16,tag=!smithed.strict] run summon marker ~ ~ ~ {Tags:["blue.tr.gamble.scramble"]}
execute as @a[distance=..16,gamemode=!creative,gamemode=!spectator] at @e[type=marker,tag=blue.tr.gamble.scramble,distance=..40,sort=random,limit=1] run function blue:tr/effects/snout/gamble/scrambled
execute as @e[type=!#blue:shared/no_effects,type=!player,distance=..16,tag=!smithed.strict] at @e[type=marker,tag=blue.tr.gamble.scramble,distance=..40,sort=random,limit=1] run function blue:tr/effects/snout/gamble/scrambled
playsound entity.illusioner.mirror_move player @a ~ ~ ~ 2 1
kill @e[type=marker,tag=blue.tr.gamble.scramble]