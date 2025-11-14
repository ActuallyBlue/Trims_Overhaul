playsound block.end_portal_frame.fill player @a[x=0] ~ ~ ~ 16 0.5
playsound block.end_portal_frame.fill player @a[x=0] ~ ~ ~ 16 0.5
particle dust{color:[0.8f,0.2f,1f],scale:1.6} ~ ~ ~ 5 0.1 5 0 600 force
schedule clear blue:tr/effects/spire/emp/aperture/find
scoreboard players reset #.aperture_duration blue.misc
scoreboard players reset #.aperture_sound blue.misc
stopsound @a player block.portal.ambient
forceload remove ~ ~
forceload add 8 8
kill