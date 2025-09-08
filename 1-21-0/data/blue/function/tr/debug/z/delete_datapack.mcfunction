execute unless entity @s[tag=blue.tr.delete.trims.datapack.confirmation] run tellraw @s {"translate":"blue.tr.no_delete_confirmation","fallback":"You don't have deletion confirmation, please run the remove_trims_overhaul debug function first.","color":"gray"}
execute unless entity @s[tag=blue.tr.delete.trims.datapack.confirmation] run return 0
tag @s remove blue.tr.delete.trims.datapack.confirmation
execute as @a run attribute @s player.block_interaction_range modifier remove blue:tr.trim
execute as @a run attribute @s player.submerged_mining_speed modifier remove blue:tr.trim
execute as @a run attribute @s player.mining_efficiency modifier remove blue:tr.trim
execute as @a run attribute @s generic.step_height modifier remove blue:tr.trim
execute as @a run attribute @s generic.safe_fall_distance modifier remove blue:tr.trim
execute as @a run attribute @s generic.attack_knockback modifier remove blue:tr.trim
execute as @a run attribute @s generic.gravity modifier remove blue:tr.trim
execute as @a run attribute @s generic.knockback_resistance modifier remove blue:tr.head
execute as @a run attribute @s generic.armor_toughness modifier remove blue:tr.head
execute as @a run attribute @s generic.movement_speed modifier remove blue:tr.head
execute as @a run attribute @s generic.attack_damage modifier remove blue:tr.head
execute as @a run attribute @s generic.attack_speed modifier remove blue:tr.head
execute as @a run attribute @s generic.max_health modifier remove blue:tr.head
execute as @a run attribute @s generic.armor modifier remove blue:tr.head
execute as @a run attribute @s generic.luck modifier remove blue:tr.head
execute as @a run attribute @s generic.knockback_resistance modifier remove blue:tr.chest
execute as @a run attribute @s generic.armor_toughness modifier remove blue:tr.chest
execute as @a run attribute @s generic.movement_speed modifier remove blue:tr.chest
execute as @a run attribute @s generic.attack_damage modifier remove blue:tr.chest
execute as @a run attribute @s generic.attack_speed modifier remove blue:tr.chest
execute as @a run attribute @s generic.max_health modifier remove blue:tr.chest
execute as @a run attribute @s generic.armor modifier remove blue:tr.chest
execute as @a run attribute @s generic.luck modifier remove blue:tr.chest
execute as @a run attribute @s generic.knockback_resistance modifier remove blue:tr.legs
execute as @a run attribute @s generic.armor_toughness modifier remove blue:tr.legs
execute as @a run attribute @s generic.movement_speed modifier remove blue:tr.legs
execute as @a run attribute @s generic.attack_damage modifier remove blue:tr.legs
execute as @a run attribute @s generic.attack_speed modifier remove blue:tr.legs
execute as @a run attribute @s generic.max_health modifier remove blue:tr.legs
execute as @a run attribute @s generic.armor modifier remove blue:tr.legs
execute as @a run attribute @s generic.luck modifier remove blue:tr.legs
execute as @a run attribute @s generic.knockback_resistance modifier remove blue:tr.boots
execute as @a run attribute @s generic.armor_toughness modifier remove blue:tr.boots
execute as @a run attribute @s generic.movement_speed modifier remove blue:tr.boots
execute as @a run attribute @s generic.attack_damage modifier remove blue:tr.boots
execute as @a run attribute @s generic.attack_speed modifier remove blue:tr.boots
execute as @a run attribute @s generic.max_health modifier remove blue:tr.boots
execute as @a run attribute @s generic.armor modifier remove blue:tr.boots
execute as @a run attribute @s generic.luck modifier remove blue:tr.boots
execute as @a run attribute @s generic.knockback_resistance modifier remove blue:tr.set
execute as @a run attribute @s generic.armor_toughness modifier remove blue:tr.set
execute as @a run attribute @s generic.movement_speed modifier remove blue:tr.set
execute as @a run attribute @s generic.attack_damage modifier remove blue:tr.set
execute as @a run attribute @s generic.attack_speed modifier remove blue:tr.set
execute as @a run attribute @s generic.max_health modifier remove blue:tr.set
execute as @a run attribute @s generic.armor modifier remove blue:tr.set
execute as @a run attribute @s generic.luck modifier remove blue:tr.set
execute as @a run attribute @s generic.max_health modifier remove blue:tr.trim
data remove storage blue:data trims
scoreboard objectives remove blue.tr.swim
scoreboard objectives remove blue.tr.blocks_swam
scoreboard objectives remove blue.tr.walk
scoreboard objectives remove blue.tr.blocks_walked
scoreboard objectives remove blue.tr.desert_time
scoreboard objectives remove blue.tr.dragons_killed
scoreboard objectives remove blue.tr.animals_tamed
scoreboard objectives remove blue.tr.animals_bred
scoreboard objectives remove blue.tr.ominous_vault
scoreboard objectives remove blue.tr.plain_vault
scoreboard objectives remove blue.tr.piglin_trades
scoreboard objectives remove blue.tr.pre_barter
scoreboard objectives remove blue.tr.mobs_killed
scoreboard objectives remove blue.tr.silverfish_killed
scoreboard objectives remove blue.tr.explosions_survived
scoreboard objectives remove blue.tr.villagers_cured
scoreboard objectives remove blue.tr.damage_blocked
scoreboard objectives remove blue.tr.items_fished
scoreboard objectives remove blue.tr.items_enchanted
scoreboard objectives remove blue.tr.raids_won
scoreboard objectives remove blue.tr.lava_seconds
scoreboard objectives remove blue.tr.RTDtime
scoreboard objectives remove blue.tr.RTDval
scoreboard objectives remove RTD.BLUE
scoreboard objectives remove blue.tr.structures
scoreboard objectives remove blue.tr.current_trim
scoreboard objectives remove blue.tr.fear
scoreboard objectives remove blue.tr.combat
scoreboard objectives remove blue.tr.died
scoreboard objectives remove blue.tr.transfer
scoreboard objectives remove TrimCMDs.BLUE
scoreboard objectives remove blue.tr.mined_sand
team remove blue.tr.rib
team remove blue.tr.silence
tag @a remove blue.tr.wayfinder
tag @a remove blue.tr.silence
tag @a remove blue.tr.raiser
tag @a remove blue.tr.shaper
tag @a remove blue.tr.sentry
tag @a remove blue.tr.spire
tag @a remove blue.tr.coast
tag @a remove blue.tr.snout
tag @a remove blue.tr.ward
tag @a remove blue.tr.bolt
tag @a remove blue.tr.flow
tag @a remove blue.tr.dune
tag @a remove blue.tr.wild
tag @a remove blue.tr.tide
tag @a remove blue.tr.host
tag @a remove blue.tr.eye
tag @a remove blue.tr.rib
tag @a remove blue.tr.vex
tag @a remove blue.tr.trim.wayfinder
tag @a remove blue.tr.trim.silence
tag @a remove blue.tr.trim.raiser
tag @a remove blue.tr.trim.shaper
tag @a remove blue.tr.trim.sentry
tag @a remove blue.tr.trim.spire
tag @a remove blue.tr.trim.coast
tag @a remove blue.tr.trim.snout
tag @a remove blue.tr.trim.ward
tag @a remove blue.tr.trim.bolt
tag @a remove blue.tr.trim.flow
tag @a remove blue.tr.trim.dune
tag @a remove blue.tr.trim.wild
tag @a remove blue.tr.trim.tide
tag @a remove blue.tr.trim.host
tag @a remove blue.tr.trim.eye
tag @a remove blue.tr.trim.rib
tag @a remove blue.tr.trim.vex
tag @a remove blue.tr.mats.amethyst
tag @a remove blue.tr.mats.blaze
tag @a remove blue.tr.mats.eye
tag @a remove blue.tr.mats.gold
tag @a remove blue.tr.mats.heart
tag @a remove blue.tr.mats.naut
tag @a remove blue.tr.mats.powder
tag @a remove blue.tr.mats.shard
tag @a remove blue.tr.mats.set
tag @a remove blue.tr.mats.shulker
tag @a remove blue.tr.mats.star
tag @a remove blue.tr.mats.wind
tag @a remove blue.tr.feet_mat
tag @a remove blue.tr.legs_mat
tag @a remove blue.tr.chest_mat
tag @a remove blue.tr.head_mat
tag @a remove blue.tr.ignore_first
tag @e remove blue.tr.armor
tag @e remove blue.tr.checked
tag @e remove blue.tr.return
tag @e remove blue.tr.snout_checked
kill b163102f-0-0-0-1
kill b163102f-0-1-0-1
kill b163102f-0-2-0-1
kill b163102f-0-3-0-1
kill b163102f-0-4-0-1
kill b163102f-0-5-0-1
kill b163102f-0-6-0-1
kill b163102f-0-7-0-1
kill b163102f-0-8-0-1
kill b163102f-0-9-0-1
kill b163102f-0-a-0-1
kill b163102f-0-b-0-1
kill b163102f-0-c-0-1
kill b163102f-0-d-0-1
kill b163102f-0-e-0-1
tellraw @s [{"translate":"blue.tr.delete_success","fallback":"You have disabled ActuallyBlue's 'Trims Overhaul' datapack, and it has removed all data involving it that it could from the world. If you wish to re-enable the datapack, run:\n","color":"dark_gray"},{"text":"/datapack enable \"file/trims-overhaul\"\n","color":"white"}]
playsound block.bell.use master @a 0 -128 0 0 0.75 1
tag @a remove blue.delete.trims.datapack.confirmation
datapack disable "file/mr_trims-overhaul.zip"
datapack disable "file/mr_trims-overhaul"
datapack disable "file/trims-overhaul.zip"
datapack disable "file/trims-overhaul"