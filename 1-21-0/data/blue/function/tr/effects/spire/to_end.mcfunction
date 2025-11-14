execute if score #.spire.origin_tp blue.config matches 0 run return run title @s actionbar {"translate":"blue.tr.spire_disabled","fallback":"Spire's ability to teleport to the End is disabled"}
execute if score #.reversal_charge blue.misc matches ..-600 run function blue:tr/effects/spire/emp/plunge/end
scoreboard players reset #.spire.guidance_cooldown blue.misc
tp ~ -32 ~
effect clear @s levitation
scoreboard players reset #.can_plunge blue.misc
effect give @s glowing 6 0 true
effect give @s slow_falling 15 0
effect give @s levitation 10 12 true
playsound entity.illusioner.mirror_move player @a[x=0] ~ -16 ~ 6 0.5
execute in overworld run particle reverse_portal ~ ~ ~ 0.25 0.25 0.25 5 64
particle reverse_portal ~ -32 ~ 0.25 0.5 0.25 2 64