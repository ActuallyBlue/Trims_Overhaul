tag @e remove blue.tr.noCheck
team remove blue.tr.wild
team remove blue.silence
team remove blue.tr.wild
team remove blue.wild
scoreboard players operation #.tr.wayfinder_completed blue.config = #.wayfinder blue.tr.completed
scoreboard players operation #.tr.silence_completed blue.config = #.silence blue.tr.completed
scoreboard players operation #.tr.shaper_completed blue.config = #.shaper blue.tr.completed
scoreboard players operation #.tr.raiser_completed blue.config = #.raiser blue.tr.completed
scoreboard players operation #.tr.sentry_completed blue.config = #.sentry blue.tr.completed
scoreboard players operation #.tr.spire_completed blue.config = #.spire blue.tr.completed
scoreboard players operation #.tr.coast_completed blue.config = #.coast blue.tr.completed
scoreboard players operation #.tr.snout_completed blue.config = #.snout blue.tr.completed
scoreboard players operation #.tr.flow_completed blue.config = #.flow blue.tr.completed
scoreboard players operation #.tr.bolt_completed blue.config = #.bolt blue.tr.completed
scoreboard players operation #.tr.ward_completed blue.config = #.ward blue.tr.completed
scoreboard players operation #.tr.dune_completed blue.config = #.dune blue.tr.completed
scoreboard players operation #.tr.wild_completed blue.config = #.wild blue.tr.completed
scoreboard players operation #.tr.tide_completed blue.config = #.tide blue.tr.completed
scoreboard players operation #.tr.host_completed blue.config = #.host blue.tr.completed
scoreboard players operation #.tr.eye_completed blue.config = #.eye blue.tr.completed
scoreboard players operation #.tr.rib_completed blue.config = #.rib blue.tr.completed
scoreboard players operation #.tr.vex_completed blue.config = #.vex blue.tr.completed
execute if score #.tr.eye_completed blue.misc matches 1.. run scoreboard objectives add blue.tr.fear dummy
execute if score #.tr.dune_completed blue.misc matches 1.. run scoreboard objectives add blue.tr.mined_sand mined:sand
execute if score #.tr.rib_completed blue.misc matches 1.. run team add blue.tr.rib
execute if score #.wayfinderClear blue.misc matches 1.. run scoreboard players operation #.wayfinder_stored blue.misc = #.wayfinderClear blue.misc
execute if score #.silenceClear blue.misc matches 1.. run scoreboard players operation #.silence_stored blue.misc = #.silenceClear blue.misc
execute if score #.shaperClear blue.misc matches 1.. run scoreboard players operation #.shaper_stored blue.misc = #.shaperClear blue.misc
execute if score #.raiserClear blue.misc matches 1.. run scoreboard players operation #.raiser_stored blue.misc = #.raiserClear blue.misc
execute if score #.sentryClear blue.misc matches 1.. run scoreboard players operation #.sentry_stored blue.misc = #.sentryClear blue.misc
execute if score #.spireClear blue.misc matches 1.. run scoreboard players operation #.spire_stored blue.misc = #.spireClear blue.misc
execute if score #.coastClear blue.misc matches 1.. run scoreboard players operation #.coast_stored blue.misc = #.coastClear blue.misc
execute if score #.snoutClear blue.misc matches 1.. run scoreboard players operation #.snout_stored blue.misc = #.snoutClear blue.misc
execute if score #.flowClear blue.misc matches 1.. run scoreboard players operation #.flow_stored blue.misc = #.flowClear blue.misc
execute if score #.boltClear blue.misc matches 1.. run scoreboard players operation #.bolt_stored blue.misc = #.boltClear blue.misc
execute if score #.wardClear blue.misc matches 1.. run scoreboard players operation #.ward_stored blue.misc = #.wardClear blue.misc
execute if score #.duneClear blue.misc matches 1.. run scoreboard players operation #.dune_stored blue.misc = #.duneClear blue.misc
execute if score #.wildClear blue.misc matches 1.. run scoreboard players operation #.wild_stored blue.misc = #.wildClear blue.misc
execute if score #.tideClear blue.misc matches 1.. run scoreboard players operation #.tide_stored blue.misc = #.tideClear blue.misc
execute if score #.hostClear blue.misc matches 1.. run scoreboard players operation #.host_stored blue.misc = #.hostClear blue.misc
execute if score #.eyeClear blue.misc matches 1.. run scoreboard players operation #.eye_stored blue.misc = #.eyeClear blue.misc
execute if score #.ribClear blue.misc matches 1.. run scoreboard players operation #.rib_stored blue.misc = #.ribClear blue.misc
execute if score #.vexClear blue.misc matches 1.. run scoreboard players operation #.vex_stored blue.misc = #.vexClear blue.misc
data modify storage blue:data trims.wayfinder.owner.text set from storage blue:data trims.macro.owner.wayfinder
data modify storage blue:data trims.wayfinder.owner.color set from storage blue:data trims.macro.owner.wayfinderC
data modify storage blue:data trims.silence.owner.text set from storage blue:data trims.macro.owner.silence
data modify storage blue:data trims.silence.owner.color set from storage blue:data trims.macro.owner.silenceC
data modify storage blue:data trims.shaper.owner.text set from storage blue:data trims.macro.owner.shaper
data modify storage blue:data trims.shaper.owner.color set from storage blue:data trims.macro.owner.shaperC
data modify storage blue:data trims.raiser.owner.text set from storage blue:data trims.macro.owner.raiser
data modify storage blue:data trims.raiser.owner.color set from storage blue:data trims.macro.owner.raiserC
data modify storage blue:data trims.sentry.owner.text set from storage blue:data trims.macro.owner.sentry
data modify storage blue:data trims.sentry.owner.color set from storage blue:data trims.macro.owner.sentryC
data modify storage blue:data trims.spire.owner.text set from storage blue:data trims.macro.owner.spire
data modify storage blue:data trims.spire.owner.color set from storage blue:data trims.macro.owner.spireC
data modify storage blue:data trims.coast.owner.text set from storage blue:data trims.macro.owner.coast
data modify storage blue:data trims.coast.owner.color set from storage blue:data trims.macro.owner.coastC
data modify storage blue:data trims.snout.owner.text set from storage blue:data trims.macro.owner.snout
data modify storage blue:data trims.snout.owner.color set from storage blue:data trims.macro.owner.snoutC
data modify storage blue:data trims.ward.owner.text set from storage blue:data trims.macro.owner.ward
data modify storage blue:data trims.ward.owner.color set from storage blue:data trims.macro.owner.wardC
data modify storage blue:data trims.bolt.owner.text set from storage blue:data trims.macro.owner.bolt
data modify storage blue:data trims.bolt.owner.color set from storage blue:data trims.macro.owner.boltC
data modify storage blue:data trims.flow.owner.text set from storage blue:data trims.macro.owner.flow
data modify storage blue:data trims.flow.owner.color set from storage blue:data trims.macro.owner.flowC
data modify storage blue:data trims.dune.owner.text set from storage blue:data trims.macro.owner.dune
data modify storage blue:data trims.dune.owner.color set from storage blue:data trims.macro.owner.duneC
data modify storage blue:data trims.wild.owner.text set from storage blue:data trims.macro.owner.wild
data modify storage blue:data trims.wild.owner.color set from storage blue:data trims.macro.owner.wildC
data modify storage blue:data trims.tide.owner.text set from storage blue:data trims.macro.owner.tide
data modify storage blue:data trims.tide.owner.color set from storage blue:data trims.macro.owner.tideC
data modify storage blue:data trims.host.owner.text set from storage blue:data trims.macro.owner.host
data modify storage blue:data trims.host.owner.color set from storage blue:data trims.macro.owner.hostC
data modify storage blue:data trims.eye.owner.text set from storage blue:data trims.macro.owner.eye
data modify storage blue:data trims.eye.owner.color set from storage blue:data trims.macro.owner.eyeC
data modify storage blue:data trims.rib.owner.text set from storage blue:data trims.macro.owner.rib
data modify storage blue:data trims.rib.owner.color set from storage blue:data trims.macro.owner.ribC
data modify storage blue:data trims.vex.owner.text set from storage blue:data trims.macro.owner.vex
data modify storage blue:data trims.vex.owner.color set from storage blue:data trims.macro.owner.vexC
scoreboard objectives remove blue.tr.trim_toggle
scoreboard objectives remove blue.tr.completed
scoreboard objectives remove blue.tr.damageTaken
scoreboard objectives remove blue.tr.fish
scoreboard objectives remove blue.tr.killSilverfish
scoreboard objectives remove blue.tr.levitateTimer
scoreboard objectives remove blue.tr.transferTime
scoreboard objectives remove blue.tr.transferLink
scoreboard objectives remove blue.tr.levitateTime
scoreboard objectives remove blue.tr.animalsTamed
scoreboard objectives remove blue.tr.ominousVault
scoreboard objectives remove blue.tr.piglinTrades
scoreboard objectives remove blue.tr.animalsBred
scoreboard objectives remove blue.tr.playerKills
scoreboard objectives remove blue.tr.desertTimer
scoreboard objectives remove blue.tr.plainVault
scoreboard objectives remove blue.tr.elderKills
scoreboard objectives remove blue.tr.desertTime
scoreboard objectives remove blue.tr.explosions
scoreboard objectives remove blue.tr.vibrations
scoreboard objectives remove blue.tr.nameStored
scoreboard objectives remove blue.tr.fishCaught
scoreboard objectives remove blue.tr.closeCall
scoreboard objectives remove blue.tr.totemUses
scoreboard objectives remove blue.tr.deathLink
scoreboard objectives remove blue.tr.enchanted
scoreboard objectives remove blue.tr.preBarter
scoreboard objectives remove blue.tr.villTrade
scoreboard objectives remove blue.tr.villHero
scoreboard objectives remove Setwarp.BLUE
scoreboard objectives remove Confirm.BLUE
scoreboard objectives remove blue.tr.deaths
scoreboard objectives remove Global.BLUE
scoreboard objectives remove blue.tr.swam
scoreboard objectives remove blue.tr.lava
scoreboard objectives remove blue.sounds