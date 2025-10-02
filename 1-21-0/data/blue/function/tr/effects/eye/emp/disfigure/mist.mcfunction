particle large_smoke ~ ~ ~ 0 0 0 0.25 250
particle large_smoke ~ ~ ~ 0 0 0 0.25 100 force
particle large_smoke ~ ~ ~ 0 0 0 0.25 100 force @a[scores={blue.particles=2..}]
particle large_smoke ~ ~ ~ 0 0 0 0.25 250 normal @a[scores={blue.particles=2..}]
particle scrape ~ ~ ~ 0 0 0 28 250
particle scrape ~ ~ ~ 0 0 0 28 100 force
particle scrape ~ ~ ~ 0 0 0 28 100 force @a[scores={blue.particles=2..}]
particle scrape ~ ~ ~ 0 0 0 28 250 normal @a[scores={blue.particles=2..}]
particle glow_squid_ink ~ ~0.5 ~ 0 0 0 0.35 75
particle glow_squid_ink ~ ~0.5 ~ 0 0 0 0.35 40 force
particle glow_squid_ink ~ ~0.5 ~ 0 0 0 0.35 40 force @a[scores={blue.particles=2..}]
particle glow_squid_ink ~ ~0.5 ~ 0 0 0 0.35 75 normal @a[scores={blue.particles=2..}]
execute as @e[type=!#blue:tr/peaceful,distance=..14] run function blue:tr/effects/eye/emp/disfigure/player
playsound entity.glow_squid.squirt player @a[tag=blue.tr.eye,limit=1] ~ ~ ~ 0 0.6 1
playsound entity.glow_squid.squirt player @a[tag=blue.tr.eye,limit=1] ~ ~ ~ 0 0.6 1
playsound entity.glow_squid.squirt player @a ~ ~ ~ 2.5 0.6