playsound entity.villager.work_weaponsmith player @a ~ ~ ~ 1.5 1
title @s actionbar {"translate":"blue.tr.gamble.hostile_immunity","fallback":"Hostile Immunity","color":"gray"}
execute at @a[advancements={blue:tr/trust={snout=false}},distance=..12,gamemode=!spectator] run particle angry_villager ~ ~1 ~ 0.4 0.6 0.4 0 4
effect give @a[advancements={blue:tr/trust={snout=false}},distance=..12] resistance 5 4