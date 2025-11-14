execute in overworld run tp ~ 360 ~
execute in overworld run particle reverse_portal ~ 400 ~ 0.3 0.4 0.3 0.2 12 force
execute in overworld run playsound entity.illusioner.mirror_move player @s ~ 398 ~ 8 0.8
execute if score #.entity_tp_effect blue.misc matches 1 run return 0
particle reverse_portal ~ ~2 ~ 0.3 0.4 0.3 0.2 12 force
playsound entity.illusioner.mirror_move player @a[x=0] ~ -58 ~ 14 1
schedule function blue:tr/effects/spire/emp/aperture/effect_cooldown 10t
scoreboard players set #.entity_tp_effect blue.misc 1