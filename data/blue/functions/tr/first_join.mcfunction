advancement grant @s only blue:tr/actual/mats
advancement grant @s only blue:tr/actual/trims
advancement grant @s only blue:tr/actual/custom
advancement grant @s only blue:tr/actual/hide/q1
advancement grant @s only blue:tr/actual/hide/q2
advancement grant @s only blue:tr/actual/hide/q3
advancement grant @s only blue:tr/actual/hide/q4
advancement grant @s only blue:tr/actual/hide/q5
execute if score #.tr.wayfinder_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/wayfinder
execute if score #.tr.silence_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/silence
execute if score #.tr.shaper_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/shaper
execute if score #.tr.raiser_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/raiser
execute if score #.tr.sentry_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/sentry
execute if score #.tr.spire_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/spire
execute if score #.tr.coast_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/coast
execute if score #.tr.snout_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/snout
execute if score #.tr.ward_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/ward
execute if score #.tr.dune_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/dune
execute if score #.tr.wild_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/wild
execute if score #.tr.tide_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/tide
execute if score #.tr.host_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/host
execute if score #.tr.eye_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/eye
execute if score #.tr.rib_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/rib
execute if score #.tr.vex_completed blue.config matches 1.. run advancement grant @s only blue:tr/actual/vex
execute if score #.dragon_defeated blue.misc matches 1.. run advancement grant @s only blue:tr/actual/egg
execute unless score @s blue.particles matches 0.. run scoreboard players set @s blue.particles 1
scoreboard players enable @s TrimCMDs.BLUE
scoreboard players add @s blue.tr.animals_tamed 0
scoreboard players add @s blue.tr.animals_bred 0