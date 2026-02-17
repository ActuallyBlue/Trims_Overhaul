scoreboard players reset #.warp_charge blue.misc
schedule function blue:tr/effects/wayfinder/emp/warp/cooldown 100t
scoreboard players set #.wayfinder.warp_cooldown blue.misc 1
playsound block.respawn_anchor.deplete block @a[distance=..8] ~ ~ ~ 2.3 2
stopsound @a[distance=..12] player block.portal.travel
stopsound @a[distance=..12] player block.sculk_shrieker.shriek
effect clear @s darkness
execute at @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1] run forceload remove ~ ~
kill @e[tag=blue.tr.wayfinder_warp,type=marker,limit=1]