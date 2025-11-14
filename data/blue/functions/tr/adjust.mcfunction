execute if data storage blue:data trims.telemetry run function blue:tr/debug/logs/z/upd
execute if data storage blue:data shared.names run scoreboard players reset * blue.id
data remove storage blue:data shared.names
data remove storage blue:data shared.UUID
data remove storage blue:data trims.unlock_text.italic
scoreboard objectives remove TrimCMDs.BLUE
scoreboard objectives add blue.tr.structures dummy
scoreboard objectives add blue.tr.current_trim dummy
scoreboard objectives add blue.tr.combat custom:play_time
scoreboard objectives add blue.tr.died deathCount
scoreboard objectives add Trims_Menu.BLUE trigger
scoreboard objectives add blue.health health
scoreboard objectives add blue.config dummy
scoreboard objectives add blue.food food
scoreboard players set #.difficulty blue.misc 2
scoreboard players set #10000 blue.misc 10000
scoreboard players set #.18s blue.misc 2
scoreboard players set #.36s blue.misc 1
scoreboard players set #60 blue.misc 60
scoreboard players set #20 blue.misc 20
scoreboard players set #10 blue.misc 10
scoreboard players set #9 blue.misc 9
scoreboard players set #5 blue.misc 5
scoreboard players set #4 blue.misc 4
scoreboard players set #3 blue.misc 3
scoreboard players set #2 blue.misc 2
execute unless data storage blue:data trims.logs.installation store result storage blue:data trims.logs.installation int 0.00083334 run time query gametime
execute if score #.Trims_Overhaul blue.misc = #.Trims_Overhaul blue.misc run tellraw @a ["\n",{"translate":"blue.tr.trims_overhaul","fallback":"Trims Overhaul","underlined":true,"color":"#3aa56a","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/trims-overhaul"},"hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.open_modrinth","fallback":"Opens the official Modrinth page","color":"gray"}}}," v3.1.0 ",{"translate":"blue.tr.was_updated","fallback":"was updated.\n","color":"gray"}]
execute unless score #.Trims_Overhaul blue.misc = #.Trims_Overhaul blue.misc run tellraw @a ["\n",{"translate":"blue.tr.trims_overhaul","fallback":"Trims Overhaul","underlined":true,"color":"#3aa56a","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/trims-overhaul"},"hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.open_modrinth","fallback":"Opens the official Modrinth page","color":"gray"}}}," v3.1.0 ",{"translate":"blue.tr.was_installed","fallback":"has been installed.\n","color":"gray"}]
scoreboard players set #.Trims_Overhaul blue.misc 310
data merge storage blue:data {trims:{flow:{Motion:[0.0d,0.0d,0.0d]},merge:{orb:{Value:1s,Tags:["blue.tr.raiser_orb"],Age:5400s,Motion:[0.0d,0.0d,0.0d]},boost:{acceleration_power:0.25d,Tags:["blue.tr.checked","blue.tr.flow_proj"]},wind:{acceleration_power:0.35d,Tags:["blue.tr.checked","blue.tr.flow_proj"]},return_item:{PickupDelay:0s,Age:-32768,Health:32767s,Invulnerable:1b,Motion:[0.0d,0.0d,0.0d]},item_data:{PickupDelay:0s,Age:-32768,Health:32767s,Invulnerable:1b,Glowing:1b},tnt:{Tags:["blue.tr.shaper.tnt"],Fuse:30s,fuse:30s,explosion_power:2.5}},materials:{"minecraft:quartz":"minecraft:quartz","minecraft:iron":"minecraft:iron_ingot","minecraft:gold":"minecraft:gold_ingot","minecraft:emerald":"minecraft:emerald","minecraft:diamond":"minecraft:diamond","minecraft:redstone":"minecraft:redstone","minecraft:resin":"minecraft:resin_brick","minecraft:lapis":"minecraft:lapis_lazuli","minecraft:copper":"minecraft:copper_ingot","minecraft:ender_eye":"minecraft:ender_eye","minecraft:gunpowder":"minecraft:gunpowder","minecraft:echo_shard":"minecraft:echo_shard","minecraft:dragon_egg":"minecraft:dragon_egg","minecraft:nether_star":"minecraft:nether_star","minecraft:amethyst":"minecraft:amethyst_shard","minecraft:wind_charge":"minecraft:wind_charge","minecraft:netherite":"minecraft:netherite_ingot","minecraft:blaze_powder":"minecraft:blaze_powder","minecraft:shulker_shell":"minecraft:shulker_shell","minecraft:nautilus_shell":"minecraft:nautilus_shell","minecraft:heart_of_the_sea":"minecraft:heart_of_the_sea"},translations:[{"value":1,"trim":"coast","translate":"Coast","color":"#C1C888"},{"value":2,"trim":"dune","translate":"Dune","color":"#E7C547"},{"value":3,"trim":"eye","translate":"Eye","color":"#1F8A46"},{"value":4,"trim":"host","translate":"Host","color":"#A34646"},{"value":5,"trim":"raiser","translate":"Raiser","color":"#95B623"},{"value":6,"trim":"rib","translate":"Rib","color":"#E6484B"},{"value":7,"trim":"sentry","translate":"Sentry","color":"#4B885B"},{"value":8,"trim":"shaper","translate":"Shaper","color":"#8F8F8F"},{"value":9,"trim":"silence","translate":"Silence","color":"#3842Cf"},{"value":10,"trim":"snout","translate":"Snout","color":"#F2B01A"},{"value":11,"trim":"spire","translate":"Spire","color":"#BE20C7"},{"value":12,"trim":"tide","translate":"Tide","color":"#199ADD"},{"value":13,"trim":"vex","translate":"Vex","color":"#CFC6A5"},{"value":14,"trim":"ward","translate":"Ward","color":"#5C70AE"},{"value":15,"trim":"wayfinder","translate":"Wayfinder","color":"#F1FFC8"},{"value":16,"trim":"wild","translate":"Wild","color":"#00D529"},{"value":17,"trim":"bolt","translate":"Bolt","color":"#B65D1A"},{"value":18,"trim":"flow","translate":"Flow","color":"#85B2C5"}],unlock_text:'{"text":"- ","color":"dark_gray","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.unlock_note","fallback":"Click here to open the objective Wiki","color":"gray"}},"clickEvent":{"action":"open_url","value":"https://github.com/ActuallyBlue/Trims_Overhaul/wiki/4.-Abilities,-Quests,-and-Tasks."}}'}}
execute unless data storage blue:data trims.wayfinder.owner run data merge storage blue:data {trims:{wayfinder:{owner:{"translate":"gui.none","color":"dark_gray"}},silence:{owner:{"translate":"gui.none","color":"dark_gray"}},shaper:{owner:{"translate":"gui.none","color":"dark_gray"}},raiser:{owner:{"translate":"gui.none","color":"dark_gray"}},sentry:{owner:{"translate":"gui.none","color":"dark_gray"}},spire:{owner:{"translate":"gui.none","color":"dark_gray"}},coast:{owner:{"translate":"gui.none","color":"dark_gray"}},snout:{owner:{"translate":"gui.none","color":"dark_gray"}},ward:{owner:{"translate":"gui.none","color":"dark_gray"}},bolt:{owner:{"translate":"gui.none","color":"dark_gray"}},flow:{owner:{"translate":"gui.none","color":"dark_gray"}},dune:{owner:{"translate":"gui.none","color":"dark_gray"}},wild:{owner:{"translate":"gui.none","color":"dark_gray"}},tide:{owner:{"translate":"gui.none","color":"dark_gray"}},host:{owner:{"translate":"gui.none","color":"dark_gray"}},eye:{owner:{"translate":"gui.none","color":"dark_gray"}},rib:{owner:{"translate":"gui.none","color":"dark_gray"}},vex:{owner:{"translate":"gui.none","color":"dark_gray"}}}}
execute unless score #.flow.wind_barrage_duration blue.config matches -1.. run scoreboard players set #.flow.wind_barrage_duration blue.config 210
execute unless score #.eye.disfigure_time blue.config matches 0 run scoreboard players set #.eye.disfigure_time blue.config 50
execute unless score #.ward.auto_damage blue.config matches 0 run scoreboard players set #.ward.auto_damage blue.config 6
execute unless score #.wild.trap_limit blue.config matches -1.. run scoreboard players set #.wild.trap_limit blue.config 8
execute unless score #.snout.gamble_multiplier blue.config matches 0.. run scoreboard players set #.snout.gamble_multiplier blue.config 1
execute unless score #.snout.gamble_limit blue.config matches -1.. run scoreboard players set #.snout.gamble_limit blue.config 3
execute unless score #.shaper.throw_cooldown blue.config matches -1.. run scoreboard players set #.shaper.throw_cooldown blue.config 30
execute unless score #.shaper.tnt_bounce blue.config matches 0.. run scoreboard players set #.shaper.tnt_bounce blue.config 1
execute unless score #.wayfinder.tracker_range blue.config matches 0.. run scoreboard players set #.wayfinder.tracker_range blue.config 1
execute unless score #.wayfinder.void_return blue.config matches 0.. run scoreboard players set #.wayfinder.void_return blue.config 1
execute unless score #.wayfinder.warp_type blue.config matches 0.. run scoreboard players set #.wayfinder.warp_type blue.config 1
execute unless score #.rib.strict_skull blue.config matches 0.. run scoreboard players set #.rib.strict_skull blue.config 1
execute unless score #.rib.strict_scorch blue.config matches 0.. run scoreboard players set #.rib.strict_scorch blue.config 1
execute unless score #.rib.strict_ashen blue.config matches 0.. run scoreboard players set #.rib.strict_ashen blue.config 1
execute unless score #.rib.strict_spawn blue.config matches 0.. run scoreboard players set #.rib.strict_spawn blue.config 1
execute unless score #.spire.origin_tp blue.config matches 0.. run scoreboard players set #.spire.origin_tp blue.config 1
execute unless score #.spire.aperture blue.config matches 0.. run scoreboard players set #.spire.aperture blue.config 1
execute unless score #.spire.no_gravity blue.config matches 0.. run scoreboard players set #.spire.no_gravity blue.config 1
execute unless score #.spire.guidance_range blue.config matches 0.. run scoreboard players set #.spire.guidance_range blue.config 1
execute unless score #.spire.limit_plunge blue.config matches 0.. run scoreboard players set #.spire.limit_plunge blue.config 1
execute unless score #.sentry.bonus_emeralds blue.config matches 0.. run scoreboard players set #.sentry.bonus_emeralds blue.config 1
execute unless score #.silence.bonus_shards blue.config matches 0.. run scoreboard players set #.silence.bonus_shards blue.config 1
execute unless score #.silence.vortex_griefing blue.config matches 0.. run scoreboard players set #.silence.vortex_griefing blue.config 0
execute unless score #.raiser.uncap_proficiency blue.config matches 0.. run scoreboard players set #.raiser.uncap_proficiency blue.config 0
execute unless score #.tr.objective_type blue.config matches 0.. run scoreboard players set #.tr.objective_type blue.config 1
execute unless score #.tr.armor_ownership blue.config matches 0.. run scoreboard players set #.tr.armor_ownership blue.config 0
execute unless score #.tr.objective_announcements blue.config matches 0.. run scoreboard players set #.tr.objective_announcements blue.config 1
execute unless score #.tr.template_clearing blue.config matches 0.. run scoreboard players set #.tr.template_clearing blue.config 1
execute unless score #.tr.require_unlock blue.config matches 0.. run scoreboard players set #.tr.require_unlock blue.config 1
execute unless score #.tr.allow_empowerment blue.config matches 0.. run scoreboard players set #.tr.allow_empowerment blue.config 1
execute unless score #.tr.egg_bonus blue.config matches 0.. run scoreboard players set #.tr.egg_bonus blue.config 1
execute unless score #.tr.limit_owned_trims blue.config matches 0.. run scoreboard players set #.tr.limit_owned_trims blue.config 0
execute unless score #.tr.random_task_defender blue.config matches 0.. run scoreboard players set #.tr.random_task_defender blue.config 1
execute unless score #.tr.death_transfer_amount blue.config matches 0.. run scoreboard players set #.tr.death_transfer_amount blue.config 1
execute unless score #.tr.manual_transferring blue.config matches 0.. run scoreboard players set #.tr.manual_transferring blue.config 1
execute unless score #.tr.manual_untrimming blue.config matches 0.. run scoreboard players set #.tr.manual_untrimming blue.config 1
execute unless score #.tr.owner_finder blue.config matches 0.. run scoreboard players set #.tr.owner_finder blue.config 1
execute unless score #.tr.reload_message blue.config matches 0.. run scoreboard players set #.tr.reload_message blue.config 1
execute unless score #.tr.trust_compact blue.config matches 0.. run scoreboard players set #.tr.trust_compact blue.config 16
execute unless score #.tr.wild_task_breed blue.config matches 0.. run scoreboard players set #.tr.wild_task_breed blue.config 150
execute unless score #.tr.wild_task_tame blue.config matches 0.. run scoreboard players set #.tr.wild_task_tame blue.config 40
execute unless score #.tr.wayfinder_task blue.config matches 0.. run scoreboard players set #.tr.wayfinder_task blue.config 10000
execute unless score #.tr.silence_task blue.config matches 0.. run scoreboard players set #.tr.silence_task blue.config 30
execute unless score #.tr.sentry_task blue.config matches 0.. run scoreboard players set #.tr.sentry_task blue.config 12
execute unless score #.tr.raiser_task blue.config matches 0.. run scoreboard players set #.tr.raiser_task blue.config 120
execute unless score #.tr.shaper_task blue.config matches 0.. run scoreboard players set #.tr.shaper_task blue.config 128
execute unless score #.tr.spire_task blue.config matches 0.. run scoreboard players set #.tr.spire_task blue.config 4
execute unless score #.tr.coast_task blue.config matches 0.. run scoreboard players set #.tr.coast_task blue.config 200
execute unless score #.tr.snout_task blue.config matches 0.. run scoreboard players set #.tr.snout_task blue.config 256
execute unless score #.tr.dune_task blue.config matches 0.. run scoreboard players set #.tr.dune_task blue.config 200
execute unless score #.tr.tide_task blue.config matches 0.. run scoreboard players set #.tr.tide_task blue.config 25000
execute unless score #.tr.host_task blue.config matches 0.. run scoreboard players set #.tr.host_task blue.config 12
execute unless score #.tr.bolt_task blue.config matches 0.. run scoreboard players set #.tr.bolt_task blue.config 12
execute unless score #.tr.flow_task blue.config matches 0.. run scoreboard players set #.tr.flow_task blue.config 10
execute unless score #.tr.ward_task blue.config matches 0.. run scoreboard players set #.tr.ward_task blue.config 5000
execute unless score #.tr.rib_task blue.config matches 0.. run scoreboard players set #.tr.rib_task blue.config 2500
execute if score #.tr.vex_task blue.config matches 300 run scoreboard players set #.tr.vex_task blue.config 250
execute if score #.tr.eye_task blue.config matches 150 run scoreboard players set #.tr.eye_task blue.config 125
execute unless score #.tr.wayfinder_toggle blue.config matches 0.. run scoreboard players set #.tr.wayfinder_toggle blue.config 1
execute unless score #.tr.silence_toggle blue.config matches 0.. run scoreboard players set #.tr.silence_toggle blue.config 1
execute unless score #.tr.shaper_toggle blue.config matches 0.. run scoreboard players set #.tr.shaper_toggle blue.config 1
execute unless score #.tr.raiser_toggle blue.config matches 0.. run scoreboard players set #.tr.raiser_toggle blue.config 1
execute unless score #.tr.sentry_toggle blue.config matches 0.. run scoreboard players set #.tr.sentry_toggle blue.config 1
execute unless score #.tr.spire_toggle blue.config matches 0.. run scoreboard players set #.tr.spire_toggle blue.config 1
execute unless score #.tr.coast_toggle blue.config matches 0.. run scoreboard players set #.tr.coast_toggle blue.config 1
execute unless score #.tr.snout_toggle blue.config matches 0.. run scoreboard players set #.tr.snout_toggle blue.config 1
execute unless score #.tr.bolt_toggle blue.config matches 0.. run scoreboard players set #.tr.bolt_toggle blue.config 1
execute unless score #.tr.flow_toggle blue.config matches 0.. run scoreboard players set #.tr.flow_toggle blue.config 1
execute unless score #.tr.ward_toggle blue.config matches 0.. run scoreboard players set #.tr.ward_toggle blue.config 1
execute unless score #.tr.dune_toggle blue.config matches 0.. run scoreboard players set #.tr.dune_toggle blue.config 1
execute unless score #.tr.wild_toggle blue.config matches 0.. run scoreboard players set #.tr.wild_toggle blue.config 1
execute unless score #.tr.tide_toggle blue.config matches 0.. run scoreboard players set #.tr.tide_toggle blue.config 1
execute unless score #.tr.host_toggle blue.config matches 0.. run scoreboard players set #.tr.host_toggle blue.config 1
execute unless score #.tr.eye_toggle blue.config matches 0.. run scoreboard players set #.tr.eye_toggle blue.config 1
execute unless score #.tr.rib_toggle blue.config matches 0.. run scoreboard players set #.tr.rib_toggle blue.config 1
execute unless score #.tr.vex_toggle blue.config matches 0.. run scoreboard players set #.tr.vex_toggle blue.config 1
execute unless score #.tr.wayfinder_completed blue.config matches 0.. run scoreboard players set #.tr.wayfinder_completed blue.config 0
execute unless score #.tr.silence_completed blue.config matches 0.. run scoreboard players set #.tr.silence_completed blue.config 0
execute unless score #.tr.shaper_completed blue.config matches 0.. run scoreboard players set #.tr.shaper_completed blue.config 0
execute unless score #.tr.raiser_completed blue.config matches 0.. run scoreboard players set #.tr.raiser_completed blue.config 0
execute unless score #.tr.sentry_completed blue.config matches 0.. run scoreboard players set #.tr.sentry_completed blue.config 0
execute unless score #.tr.spire_completed blue.config matches 0.. run scoreboard players set #.tr.spire_completed blue.config 0
execute unless score #.tr.coast_completed blue.config matches 0.. run scoreboard players set #.tr.coast_completed blue.config 0
execute unless score #.tr.snout_completed blue.config matches 0.. run scoreboard players set #.tr.snout_completed blue.config 0
execute unless score #.tr.flow_completed blue.config matches 0.. run scoreboard players set #.tr.flow_completed blue.config 0
execute unless score #.tr.bolt_completed blue.config matches 0.. run scoreboard players set #.tr.bolt_completed blue.config 0
execute unless score #.tr.ward_completed blue.config matches 0.. run scoreboard players set #.tr.ward_completed blue.config 0
execute unless score #.tr.dune_completed blue.config matches 0.. run scoreboard players set #.tr.dune_completed blue.config 0
execute unless score #.tr.wild_completed blue.config matches 0.. run scoreboard players set #.tr.wild_completed blue.config 0
execute unless score #.tr.tide_completed blue.config matches 0.. run scoreboard players set #.tr.tide_completed blue.config 0
execute unless score #.tr.host_completed blue.config matches 0.. run scoreboard players set #.tr.host_completed blue.config 0
execute unless score #.tr.eye_completed blue.config matches 0.. run scoreboard players set #.tr.eye_completed blue.config 0
execute unless score #.tr.rib_completed blue.config matches 0.. run scoreboard players set #.tr.rib_completed blue.config 0
execute unless score #.tr.vex_completed blue.config matches 0.. run scoreboard players set #.tr.vex_completed blue.config 0
return 0
scoreboard objectives add color trigger