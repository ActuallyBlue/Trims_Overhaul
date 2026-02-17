scoreboard players reset #.eye.scare_cooldown blue.misc
schedule clear blue:tr/effects/eye/stalk/cooldown
scoreboard players reset #.flow.barrage_cooldown blue.misc
schedule clear blue:tr/effects/flow/emp/barrage/cooldown
scoreboard players reset #.host.exchange_cooldown blue.misc
schedule clear blue:tr/effects/host/exchange/cooldown
scoreboard players reset #.rib.ashen_cooldown blue.misc
schedule clear blue:tr/effects/rib/emp/ashen/cooldown
scoreboard players reset #.rib.projectile_cooldown blue.misc
schedule clear blue:tr/effects/rib/proj/cooldown
scoreboard players reset #.tide.surge_cooldown blue.misc
schedule clear blue:tr/effects/tide/emp/surge_cooldown
scoreboard players reset #.spire.guidance_cooldown blue.misc
schedule clear blue:tr/effects/spire/guidance_cooldown
scoreboard players reset #.wayfinder.warp_cooldown blue.misc
schedule clear blue:tr/effects/wayfinder/emp/warp/cooldown
scoreboard players reset #.shaper.throw_cooldown blue.misc
schedule clear blue:tr/effects/shaper/emp/available
scoreboard players reset #.silence.vortex_cooldown blue.misc
schedule clear blue:tr/effects/silence/emp/vortex/cooldown
scoreboard players reset #.ward.resort_cooldown blue.misc
schedule clear blue:tr/effects/ward/resort/cooldown
scoreboard players reset #.ward.kinetic_cooldown blue.misc
schedule clear blue:tr/effects/ward/kinetic/cooldown
scoreboard players reset #.tide.weak_cooldown blue.misc
scoreboard players reset #.wayfinder.return_cooldown blue.misc
scoreboard players reset #.wild.florist_cooldown blue.misc
scoreboard players reset #.coast.fire_cooldown blue.misc
execute if score #.reversal_charge blue.misc matches -600..-1 run scoreboard players set #.reversal_charge blue.misc 0
execute if score #.vex.sneak blue.misc matches -95..-80 run scoreboard players set #.vex.sneak blue.misc -1
execute if score #.sentry.charge blue.misc matches ..-1 run scoreboard players set #.sentry.charge blue.misc 0