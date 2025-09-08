title @s actionbar {"translate":"blue.tr.gamble.glow_burst","fallback":"Glow Burst","color":"gray"}
particle scrape ~ ~1 ~ 0 0 0 15 100 force
particle scrape ~ ~1 ~ 0 0 0 15 150 force @a[scores={blue.particles=1..}]
playsound entity.glow_squid.squirt player @a ~ ~ ~ 1 1
effect give @a[distance=..16,gamemode=!spectator,gamemode=!creative] glowing 12 0