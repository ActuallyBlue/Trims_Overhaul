scoreboard players reset #.warp_charge blue.misc
schedule function blue:tr/effects/wayfinder/emp/cooldown 100t
scoreboard players set #.wayfinder.warp_cooldown blue.misc 1
playsound block.respawn_anchor.deplete block @a[distance=..8] ~ ~ ~ 2.3 2
stopsound @a[distance=..12] player block.portal.travel
stopsound @a[distance=..12] player block.sculk_shrieker.shriek
effect clear @s darkness
execute at b163102f-0-3-0-1 run forceload remove ~ ~
execute at b163102f-0-3-0-1 run forceload add 8 8
kill b163102f-0-3-0-1