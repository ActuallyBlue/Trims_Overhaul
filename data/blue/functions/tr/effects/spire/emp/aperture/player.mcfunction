particle reverse_portal ~ ~2 ~ 0.3 0.4 0.3 0.25 120 force
playsound entity.illusioner.mirror_move player @a[x=0] ~ -30 ~ 18 0.8
execute in overworld run tp @s ~ 380 ~
execute in overworld run particle reverse_portal ~ 380 ~ 0.3 0.4 0.3 0.2 120 force
execute in overworld run playsound entity.illusioner.mirror_move player @s ~ 402 ~ 11 0.8