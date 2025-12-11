title @s actionbar {"translate":"blue.tr.gamble.damage","fallback":"Damage","color":"gray"}
playsound entity.player.attack.crit player @a ~ ~ ~ 1.5 0.8
execute at @a[distance=..10,gamemode=!spectator,gamemode=!creative] run particle damage_indicator ~ ~0.2 ~ 0.3 0.2 0.3 0 8
execute as @e[type=!#blue:shared/no_ai,distance=0.01..10] run damage @s 4 blue:tr/raw by @a[tag=blue.tr.snout,limit=1]
damage @s 17 blue:tr/raw by @s