
scoreboard players add @s blue.misc 1
schedule function blue:tr/effects/silence/emp/vortex/loop 1t
execute if score @s blue.misc matches 1..3 run particle sculk_charge_pop ~ ~ ~ 0.4 0.4 0.4 0.01 24
execute if score @s blue.misc matches 1..3 run particle smoke ~ ~ ~ 0.4 0.4 0.4 0 1
execute if score @s blue.misc matches 1..3 run particle glow ~ ~ ~ 0.4 0.5 0.4 0 1
execute if score @s blue.misc matches ..4 run return 0
effect give @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=..7.5] slow_falling 1 0
execute as @e[type=!#blue:tr/no_effects,type=!player,tag=!smithed.strict,distance=..8] at @s facing entity b163102f-0-6-0-1 eyes positioned ^ ^ ^0.5 if block ~ ~ ~ #blue:trims/passable run tp @s ^ ^ ^-0.42
execute as @a[tag=!blue.tr.silence,gamemode=!spectator,gamemode=!creative,distance=..8] at @s facing entity b163102f-0-6-0-1 eyes positioned ^ ^ ^0.5 if block ~ ~ ~ #blue:trims/passable run tp @s ^ ^ ^-0.42
execute if score @s blue.misc matches 5 run particle enchant ~ ~1 ~ 0.1 0.1 0.1 6 400 normal @a[scores={blue.particles=2..}]
execute if score @s blue.misc matches 5 run particle enchant ~ ~1 ~ 0.1 0.1 0.1 6 300 normal @a[scores={blue.particles=1..}]
execute if score @s blue.misc matches 5 run particle enchant ~ ~1 ~ 0.1 0.1 0.1 6 100 force
execute if score @s blue.misc matches 5 run particle nautilus ~ ~1 ~ 0.1 0.1 0.1 4.9 1200 normal @a[scores={blue.particles=2..}]
execute if score @s blue.misc matches 5 run particle nautilus ~ ~1 ~ 0.1 0.1 0.1 4.9 700
execute if score @s blue.misc matches 5 run particle nautilus ~ ~1 ~ 0.1 0.1 0.1 4.9 400 force
execute if score @s blue.misc matches 35 run stopsound @a master entity.warden.nearby_closest
execute if score @s blue.misc matches 36 run particle sonic_boom ~ ~ ~ 0.1 0.1 0.1 0 24 force
execute unless score @s blue.misc matches 44 run return 0
particle flash ~ ~0.1 ~
playsound block.sculk_catalyst.bloom master @a[distance=..48] ~ ~ ~ 10 0.5
playsound block.sculk_catalyst.bloom master @a[distance=..48] ~ ~ ~ 10 0.5
playsound block.sculk_catalyst.bloom master @a[distance=..48] ~ ~ ~ 10 0.5
playsound block.sculk_catalyst.bloom master @a[distance=..48] ~ ~ ~ 10 0.5
playsound block.sculk_catalyst.bloom master @a[distance=..48] ~ ~ ~ 10 0.5
playsound block.sculk_catalyst.bloom master @a[distance=..48] ~ ~ ~ 10 0.5
playsound entity.warden.sonic_boom master @a[distance=..100] ~ ~ ~ 4 0.7 0.1
particle sculk_charge_pop ~ ~0.1 ~ 0.1 0.1 0.1 0.4 300 normal @a[scores={blue.particles=2..}]
particle sculk_soul ~ ~0.1 ~ 0.1 0.1 0.1 0.35 900 normal @a[scores={blue.particles=2..}]
particle sculk_charge_pop ~ ~0.1 ~ 0.1 0.1 0.1 0.4 200 normal @a[scores={blue.particles=1..}]
particle large_smoke ~ ~0.1 ~ 0.1 0.1 0.1 0.4 50 normal @a[scores={blue.particles=1..}]
particle sculk_charge_pop ~ ~0.1 ~ 0.1 0.1 0.1 0.4 100 force
particle sculk_soul ~ ~0.1 ~ 0.1 0.1 0.1 0.35 300 force
particle sculk_soul ~ ~0.1 ~ 0.1 0.1 0.1 0.35 500
stopsound @a[tag=!blue.tr.silence,distance=..8] master item.elytra.flying
playsound item.elytra.flying master @a[tag=!blue.tr.silence,distance=..8] ~ -1000 ~ 0 1.7 0.4
effect give @a[tag=!blue.tr.silence,distance=..8] darkness 9 78 true
schedule function blue:tr/effects/silence/emp/vortex/cooldown 600t
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=..1] run damage @s 80 blue:tr/vortex by b163102f-0-6-0-1 from @a[tag=blue.tr.silence,limit=1]
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=1.01..2] run damage @s 70 blue:tr/vortex by b163102f-0-6-0-1 from @a[tag=blue.tr.silence,limit=1]
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=2.01..3] run damage @s 60 blue:tr/vortex by b163102f-0-6-0-1 from @a[tag=blue.tr.silence,limit=1]
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=3.01..4] run damage @s 50 blue:tr/vortex by b163102f-0-6-0-1 from @a[tag=blue.tr.silence,limit=1]
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=4.01..5] run damage @s 40 blue:tr/vortex by b163102f-0-6-0-1 from @a[tag=blue.tr.silence,limit=1]
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=5.01..6] run damage @s 30 blue:tr/vortex by b163102f-0-6-0-1 from @a[tag=blue.tr.silence,limit=1]
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=6.01..7] run damage @s 20 blue:tr/vortex by b163102f-0-6-0-1 from @a[tag=blue.tr.silence,limit=1]
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=7.01..8] run damage @s 10 blue:tr/vortex by b163102f-0-6-0-1 from @a[tag=blue.tr.silence,limit=1]
execute unless score #.silence.vortex_griefing blue.config matches 1 run kill
execute unless score #.silence.vortex_griefing blue.config matches 1 run return 0
summon creeper ~ ~ ~ {Fuse:0s,ignited:1b,ExplosionRadius:4b}
schedule function blue:tr/effects/silence/emp/vortex/sound 1t
kill