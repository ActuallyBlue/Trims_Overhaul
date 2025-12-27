tag @s remove blue.tr.coast_delay
execute if score #.tr.armor_ownership blue.config matches 1 if score @s blue.tr.current_trim matches 1.. run function blue:tr/inv/rejoin_ownership
execute if score #.tr.wayfinder_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/wayfinder=false}] only blue:tr/display/wayfinder
execute if score #.tr.silence_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/silence=false}] only blue:tr/display/silence
execute if score #.tr.shaper_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/shaper=false}] only blue:tr/display/shaper
execute if score #.tr.raiser_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/raiser=false}] only blue:tr/display/raiser
execute if score #.tr.sentry_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/sentry=false}] only blue:tr/display/sentry
execute if score #.tr.spire_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/spire=false}] only blue:tr/display/spire
execute if score #.tr.coast_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/coast=false}] only blue:tr/display/coast
execute if score #.tr.snout_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/snout=false}] only blue:tr/display/snout
execute if score #.tr.ward_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/ward=false}] only blue:tr/display/ward
execute if score #.tr.dune_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/dune=false}] only blue:tr/display/dune
execute if score #.tr.wild_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/wild=false}] only blue:tr/display/wild
execute if score #.tr.tide_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/tide=false}] only blue:tr/display/tide
execute if score #.tr.host_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/host=false}] only blue:tr/display/host
execute if score #.tr.eye_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/eye=false}] only blue:tr/display/eye
execute if score #.tr.rib_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/rib=false}] only blue:tr/display/rib
execute if score #.tr.vex_completed blue.config matches 1..2 run advancement grant @s[advancements={blue:tr/display/vex=false}] only blue:tr/display/vex
execute if score #.dragon_defeated blue.misc matches 1 run advancement grant @s[advancements={blue:tr/display/dragon_egg=false}] only blue:tr/display/dragon_egg
execute if score #.tr.wayfinder_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/wayfinder=true}] only blue:tr/display/wayfinder
execute if score #.tr.silence_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/silence=true}] only blue:tr/display/silence
execute if score #.tr.shaper_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/shaper=true}] only blue:tr/display/shaper
execute if score #.tr.raiser_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/raiser=true}] only blue:tr/display/raiser
execute if score #.tr.sentry_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/sentry=true}] only blue:tr/display/sentry
execute if score #.tr.spire_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/spire=true}] only blue:tr/display/spire
execute if score #.tr.coast_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/coast=true}] only blue:tr/display/coast
execute if score #.tr.snout_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/snout=true}] only blue:tr/display/snout
execute if score #.tr.ward_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/ward=true}] only blue:tr/display/ward
execute if score #.tr.dune_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/dune=true}] only blue:tr/display/dune
execute if score #.tr.wild_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/wild=true}] only blue:tr/display/wild
execute if score #.tr.tide_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/tide=true}] only blue:tr/display/tide
execute if score #.tr.host_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/host=true}] only blue:tr/display/host
execute if score #.tr.eye_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/eye=true}] only blue:tr/display/eye
execute if score #.tr.rib_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/rib=true}] only blue:tr/display/rib
execute if score #.tr.vex_completed blue.config matches 0 run advancement revoke @s[advancements={blue:tr/display/vex=true}] only blue:tr/display/vex
execute if score #.dragon_defeated blue.misc matches 0 run advancement revoke @s[advancements={blue:tr/display/dragon_egg=true}] only blue:tr/display/dragon_egg
execute if entity @s[tag=!blue.tr.wayfinder,tag=!blue.tr.silence,tag=!blue.tr.shaper,tag=!blue.tr.raiser,tag=!blue.tr.sentry,tag=!blue.tr.spire,tag=!blue.tr.coast,tag=!blue.tr.snout,tag=!blue.tr.ward,tag=!blue.tr.dune,tag=!blue.tr.wild,tag=!blue.tr.tide,tag=!blue.tr.host,tag=!blue.tr.eye,tag=!blue.tr.rib,tag=!blue.tr.vex] run return 0
execute if score #.wayfinder_stored blue.misc matches 1.. if entity @s[tag=blue.tr.wayfinder] run function blue:tr/delayed/return/wayfinder
execute if score #.silence_stored blue.misc matches 1.. if entity @s[tag=blue.tr.silence] run function blue:tr/delayed/return/silence
execute if score #.shaper_stored blue.misc matches 1.. if entity @s[tag=blue.tr.shaper] run function blue:tr/delayed/return/shaper
execute if score #.raiser_stored blue.misc matches 1.. if entity @s[tag=blue.tr.raiser] run function blue:tr/delayed/return/raiser
execute if score #.sentry_stored blue.misc matches 1.. if entity @s[tag=blue.tr.sentry] run function blue:tr/delayed/return/sentry
execute if score #.spire_stored blue.misc matches 1.. if entity @s[tag=blue.tr.spire] run function blue:tr/delayed/return/spire
execute if score #.coast_stored blue.misc matches 1.. if entity @s[tag=blue.tr.coast] run function blue:tr/delayed/return/coast
execute if score #.snout_stored blue.misc matches 1.. if entity @s[tag=blue.tr.snout] run function blue:tr/delayed/return/snout
execute if score #.ward_stored blue.misc matches 1.. if entity @s[tag=blue.tr.ward] run function blue:tr/delayed/return/ward
execute if score #.dune_stored blue.misc matches 1.. if entity @s[tag=blue.tr.dune] run function blue:tr/delayed/return/dune
execute if score #.wild_stored blue.misc matches 1.. if entity @s[tag=blue.tr.wild] run function blue:tr/delayed/return/wild
execute if score #.tide_stored blue.misc matches 1.. if entity @s[tag=blue.tr.tide] run function blue:tr/delayed/return/tide
execute if score #.host_stored blue.misc matches 1.. if entity @s[tag=blue.tr.host] run function blue:tr/delayed/return/host
execute if score #.eye_stored blue.misc matches 1.. if entity @s[tag=blue.tr.eye] run function blue:tr/delayed/return/eye
execute if score #.rib_stored blue.misc matches 1.. if entity @s[tag=blue.tr.rib] run function blue:tr/delayed/return/rib
execute if score #.vex_stored blue.misc matches 1.. if entity @s[tag=blue.tr.vex] run function blue:tr/delayed/return/vex
execute unless score #.admin_revoke_trim blue.misc matches 1.. run return 0
execute if score #.revoke_wayfinder blue.misc matches 2.. run tellraw @s[tag=blue.tr.wayfinder] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Wayfinder","color":"#F1FFC8"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_wayfinder blue.misc matches 2.. if entity @s[tag=blue.tr.wayfinder] store success score #.revoke_wayfinder blue.misc run tag @s remove blue.tr.wayfinder
execute if score #.revoke_silence blue.misc matches 2.. run tellraw @s[tag=blue.tr.silence] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Silence","color":"#3842Cf"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_silence blue.misc matches 2.. if entity @s[tag=blue.tr.silence] store success score #.revoke_silence blue.misc run tag @s remove blue.tr.silence
execute if score #.revoke_shaper blue.misc matches 2.. run tellraw @s[tag=blue.tr.shaper] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Shaper","color":"#8F8F8F"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_shaper blue.misc matches 2.. if entity @s[tag=blue.tr.shaper] store success score #.revoke_shaper blue.misc run tag @s remove blue.tr.shaper
execute if score #.revoke_raiser blue.misc matches 2.. run tellraw @s[tag=blue.tr.raiser] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Raiser","color":"#95B623"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_raiser blue.misc matches 2.. if entity @s[tag=blue.tr.raiser] store success score #.revoke_raiser blue.misc run tag @s remove blue.tr.raiser
execute if score #.revoke_sentry blue.misc matches 2.. run tellraw @s[tag=blue.tr.sentry] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Sentry","color":"#4B885B"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_sentry blue.misc matches 2.. if entity @s[tag=blue.tr.sentry] store success score #.revoke_sentry blue.misc run tag @s remove blue.tr.sentry
execute if score #.revoke_spire blue.misc matches 2.. run tellraw @s[tag=blue.tr.spire] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Spire","color":"#BE20C7"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_spire blue.misc matches 2.. if entity @s[tag=blue.tr.spire] store success score #.revoke_spire blue.misc run tag @s remove blue.tr.spire
execute if score #.revoke_coast blue.misc matches 2.. run tellraw @s[tag=blue.tr.coast] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Coast","color":"#C1C888"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_coast blue.misc matches 2.. if entity @s[tag=blue.tr.coast] store success score #.revoke_coast blue.misc run tag @s remove blue.tr.coast
execute if score #.revoke_snout blue.misc matches 2.. run tellraw @s[tag=blue.tr.snout] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Snout","color":"#F2B01A"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_snout blue.misc matches 2.. if entity @s[tag=blue.tr.snout] store success score #.revoke_snout blue.misc run tag @s remove blue.tr.snout
execute if score #.revoke_ward blue.misc matches 2.. run tellraw @s[tag=blue.tr.ward] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Ward","color":"#5C70AE"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_ward blue.misc matches 2.. if entity @s[tag=blue.tr.ward] store success score #.revoke_ward blue.misc run tag @s remove blue.tr.ward
execute if score #.revoke_dune blue.misc matches 2.. run tellraw @s[tag=blue.tr.dune] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Dune","color":"#E7C547"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_dune blue.misc matches 2.. if entity @s[tag=blue.tr.dune] store success score #.revoke_dune blue.misc run tag @s remove blue.tr.dune
execute if score #.revoke_wild blue.misc matches 2.. run tellraw @s[tag=blue.tr.wild] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Wild","color":"#00D529"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_wild blue.misc matches 2.. if entity @s[tag=blue.tr.wild] store success score #.revoke_wild blue.misc run tag @s remove blue.tr.wild
execute if score #.revoke_tide blue.misc matches 2.. run tellraw @s[tag=blue.tr.tide] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Tide","color":"#199ADD"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_tide blue.misc matches 2.. if entity @s[tag=blue.tr.tide] store success score #.revoke_tide blue.misc run tag @s remove blue.tr.tide
execute if score #.revoke_host blue.misc matches 2.. run tellraw @s[tag=blue.tr.host] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Host","color":"#A34646"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_host blue.misc matches 2.. if entity @s[tag=blue.tr.host] store success score #.revoke_host blue.misc run tag @s remove blue.tr.host
execute if score #.revoke_eye blue.misc matches 2.. run tellraw @s[tag=blue.tr.eye] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Eye","color":"#1F8A46"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_eye blue.misc matches 2.. if entity @s[tag=blue.tr.eye] store success score #.revoke_eye blue.misc run tag @s remove blue.tr.eye
execute if score #.revoke_rib blue.misc matches 2.. run tellraw @s[tag=blue.tr.rib] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Rib","color":"#E6484B"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_rib blue.misc matches 2.. if entity @s[tag=blue.tr.rib] store success score #.revoke_rib blue.misc run tag @s remove blue.tr.rib
execute if score #.revoke_vex blue.misc matches 2.. run tellraw @s[tag=blue.tr.vex] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.Your","fallback":"Your","color":"gray"}," ",{"translate":"Vex","color":"#CFC6A5"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.revoke_vex blue.misc matches 2.. if entity @s[tag=blue.tr.vex] store success score #.revoke_vex blue.misc run tag @s remove blue.tr.vex
execute unless score #.revoke_wayfinder blue.misc matches 2.. unless score #.revoke_silence blue.misc matches 2.. unless score #.revoke_shaper blue.misc matches 2.. unless score #.revoke_raiser blue.misc matches 2.. unless score #.revoke_sentry blue.misc matches 2.. unless score #.revoke_spire blue.misc matches 2.. unless score #.revoke_coast blue.misc matches 2.. unless score #.revoke_snout blue.misc matches 2.. unless score #.revoke_ward blue.misc matches 2.. unless score #.revoke_dune blue.misc matches 2.. unless score #.revoke_wild blue.misc matches 2.. unless score #.revoke_tide blue.misc matches 2.. unless score #.revoke_host blue.misc matches 2.. unless score #.revoke_eye blue.misc matches 2.. unless score #.revoke_rib blue.misc matches 2.. unless score #.revoke_vex blue.misc matches 2.. run scoreboard players set #.admin_revoke_trim blue.misc 0