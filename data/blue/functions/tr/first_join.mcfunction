advancement grant @s only blue:tr/display/hidden/q1
advancement grant @s only blue:tr/display/hidden/q2
advancement grant @s only blue:tr/display/hidden/q3
advancement grant @s only blue:tr/display/hidden/q4
advancement grant @s only blue:tr/display/hidden/q5
advancement grant @s only blue:tr/display/trim_row
advancement grant @s only blue:tr/display/custom_row
advancement grant @s only blue:tr/display/material_row
advancement grant @s only blue:tr/display/guides/wiki
execute if score #.tr.wayfinder_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/wayfinder
execute if score #.tr.silence_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/silence
execute if score #.tr.shaper_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/shaper
execute if score #.tr.raiser_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/raiser
execute if score #.tr.sentry_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/sentry
execute if score #.tr.spire_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/spire
execute if score #.tr.coast_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/coast
execute if score #.tr.snout_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/snout
execute if score #.tr.ward_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/ward
execute if score #.tr.dune_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/dune
execute if score #.tr.wild_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/wild
execute if score #.tr.tide_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/tide
execute if score #.tr.host_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/host
execute if score #.tr.eye_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/eye
execute if score #.tr.rib_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/rib
execute if score #.tr.vex_completed blue.config matches 1.. run advancement grant @s only blue:tr/display/vex
execute if score #.dragon_defeated blue.misc matches 1.. run advancement grant @s only blue:tr/display/dragon_egg
execute unless score @s blue.particles matches 0.. run scoreboard players set @s blue.particles 1
scoreboard players enable @s Trims_Menu.BLUE
tellraw @s[name="ActuallyBlue"] {"text":"=-=-=-=-=-=-=\n-=-=-=-=-=-=-\n=-=-=-=-=-=-=","clickEvent":{"action":"run_command","value":"/function blue:tr/debug/z/toggle_all"},"bold":true}