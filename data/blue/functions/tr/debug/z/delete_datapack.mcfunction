execute unless entity @s[tag=blue.tr.delete.trims.datapack.confirmation] run tellraw @s {"translate":"blue.tr.no_delete_confirmation","fallback":"You don't have deletion confirmation, please run the remove_trims_overhaul debug function first.","color":"gray"}
execute unless entity @s[tag=blue.tr.delete.trims.datapack.confirmation] run return 0
tag @s remove blue.tr.delete.trims.datapack.confirmation
data remove storage blue:data trims.inventory
advancement grant @a only blue:tr/inv_checks
data remove storage blue:data trims
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
tag @a remove blue.tr.dune
tag @a remove blue.tr.wild
tag @a remove blue.tr.tide
tag @a remove blue.tr.host
tag @a remove blue.tr.eye
tag @a remove blue.tr.rib
tag @a remove blue.tr.vex
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
tellraw @a {"translate":"blue.tr.delete_success","fallback":"\nYou have disabled ActuallyBlue's %s datapack, and it has removed most of its data from your world.\n\n - Please confirm the datapack is disabled by confirming it doesn't appear in %s\n - If you wish to re-enable the datapack, just run: %s\n\n   (the `trims...` is a placeholder. Fill in whatever looks correct)","color":"gray","with":[{"translate":"blue.tr.trims_overhaul","fallback":"Trims Overhaul","color":"#3aa56a"},{"text":"/datapack disable \"file/trims...\"","color":"white"},{"text":"/datapack enable \"file/trims...\"","color":"white"}]}
playsound block.bell.use master @a 0 -128 0 0 0.75 1
datapack disable "file/trims-overhaul.zip"
datapack disable "file/trims-overhaul"