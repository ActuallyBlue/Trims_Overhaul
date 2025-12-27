execute unless entity @s[tag=blue.tr.delete_confirmation] run tellraw @s {"translate":"blue.tr.no_delete_confirmation","fallback":"You don't have deletion confirmation, please run the remove_trims_overhaul debug function first.","color":"gray"}
execute unless entity @s[tag=blue.tr.delete_confirmation] run return 0
tag @s remove blue.tr.delete_confirmation
scoreboard players set #.tr.manual_untrimming blue.config 1
scoreboard players set #.tr.template_clearing blue.config 0
execute as @a run function blue:tr/inv/untrim
data remove storage blue:trims inventory
advancement grant @a only blue:tr/inv_checks
data remove storage blue:trims wayfinder
data remove storage blue:trims silence
data remove storage blue:trims shaper
data remove storage blue:trims raiser
data remove storage blue:trims sentry
data remove storage blue:trims spire
data remove storage blue:trims coast
data remove storage blue:trims snout
data remove storage blue:trims ward
data remove storage blue:trims dune
data remove storage blue:trims wild
data remove storage blue:trims tide
data remove storage blue:trims host
data remove storage blue:trims eye
data remove storage blue:trims rib
data remove storage blue:trims vex
data remove storage blue:trims logs
execute as @a run function blue:tr/inv/unequip/attributes
function blue:tr/settings/set_default
scoreboard players reset #.tr.wayfinder_completed blue.config
scoreboard players reset #.tr.silence_completed blue.config
scoreboard players reset #.tr.raiser_completed blue.config
scoreboard players reset #.tr.shaper_completed blue.config
scoreboard players reset #.tr.sentry_completed blue.config
scoreboard players reset #.tr.spire_completed blue.config
scoreboard players reset #.tr.coast_completed blue.config
scoreboard players reset #.tr.snout_completed blue.config
scoreboard players reset #.tr.ward_completed blue.config
scoreboard players reset #.tr.dune_completed blue.config
scoreboard players reset #.tr.wild_completed blue.config
scoreboard players reset #.tr.tide_completed blue.config
scoreboard players reset #.tr.host_completed blue.config
scoreboard players reset #.tr.eye_completed blue.config
scoreboard players reset #.tr.rib_completed blue.config
scoreboard players reset #.tr.vex_completed blue.config
scoreboard players reset #.Trims_Overhaul blue.misc
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
scoreboard objectives remove Trims_Menu.BLUE
scoreboard objectives remove blue.tr.mined_sand
team remove blue.tr.rib
team remove blue.tr.silence
execute as @a run function blue:tr/inv/equip/remove_owner
tag @a remove blue.tr.ignore_first
tag @e remove blue.tr.armor
tag @e remove blue.tr.checked
tag @e remove blue.tr.return
tag @e remove blue.tr.snout_checked
tag @a remove b.tr.3x
kill @e[tag=blue.tr.wild.trap]
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
tellraw @a {"translate":"blue.tr.delete_success","fallback":"\nYou have disabled ActuallyBlue's %s datapack, and it has removed most of its data from your world.\n\n - Please confirm the datapack is disabled by confirming it doesn't appear in %s\n - If you wish to re-enable the datapack, just run: %s\n\n   (the `trims...` is a placeholder. Fill in whatever looks correct)","color":"gray","with":[{"translate":"blue.tr.trims_overhaul","fallback":"Trims Overhaul","color":"#3aa56a"},{"text":"/datapack disable \"file/trims...\"","color":"white"},{"text":"/datapack enable \"file/trims...\"","color":"white"}]}
playsound block.bell.use master @a 0 -128 0 0 0.75 1
datapack disable "file/CUSTOM_trims_overhaul-MOD-v3.1.3.jar"
datapack disable "file/CUSTOM_trims_overhaul-DP_RP-v3.1.3.zip"
datapack disable "file/CUSTOM_trims_overhaul-DP-v3.1.3"
datapack disable "file/trims_overhaul-MOD-v3.1.3.jar"
datapack disable "file/trims_overhaul-DP_RP-v3.1.3.zip"
datapack disable "file/trims_overhaul-DP_RP-v3.1.3"