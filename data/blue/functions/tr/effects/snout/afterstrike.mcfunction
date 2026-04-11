advancement revoke @s only blue:tr/afterstrike
execute on attacker run tag @s add blue.tr.snout.temp
execute on attacker run advancement revoke @s only blue:tr/afterstrike
particle enchanted_hit ~ ~1 ~ 0.3 0.4 0.3 0.4 32
particle crit ~ ~1 ~ 0 0.5 0 0 16
damage @s 8 blue:tr/raw by @a[tag=blue.tr.snout.temp,limit=1]
tag @a[tag=blue.tr.snout.temp,limit=1] remove blue.tr.snout.temp