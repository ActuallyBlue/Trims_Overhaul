playsound block.note_block.chime player @s ~ ~ ~ 1 1.5
tellraw @s ["\n\n",{"translate":"blue.tr.import_success","fallback":"Settings have been successfully imported.","color":"gray"}]
execute store result storage blue:trims temp.export.objective_type int 1 run scoreboard players get #.tr.objective_type blue.config
execute store result storage blue:trims temp.export.objective_announcements int 1 run scoreboard players get #.tr.objective_announcements blue.config
execute store result storage blue:trims temp.export.template_clearing int 1 run scoreboard players get #.tr.template_clearing blue.config
execute store result storage blue:trims temp.export.require_unlock int 1 run scoreboard players get #.tr.require_unlock blue.config
execute store result storage blue:trims temp.export.limit_owned_trims int 1 run scoreboard players get #.tr.limit_owned_trims blue.config
execute store result storage blue:trims temp.export.random_task_defender int 1 run scoreboard players get #.tr.random_task_defender blue.config
execute store result storage blue:trims temp.export.death_transfer_amount int 1 run scoreboard players get #.tr.death_transfer_amount blue.config
execute store result storage blue:trims temp.export.manual_transferring int 1 run scoreboard players get #.tr.manual_transferring blue.config
execute store result storage blue:trims temp.export.manual_untrimming int 1 run scoreboard players get #.tr.manual_untrimming blue.config
execute store result storage blue:trims temp.export.owner_finder int 1 run scoreboard players get #.tr.owner_finder blue.config
execute store result storage blue:trims temp.export.reload_message int 1 run scoreboard players get #.tr.reload_message blue.config
execute store result storage blue:trims temp.export.wind_barrage_duration int 1 run scoreboard players get #.flow.wind_barrage_duration blue.config
execute store result storage blue:trims temp.export.throw_cooldown int 1 run scoreboard players get #.shaper.throw_cooldown blue.config
execute store result storage blue:trims temp.export.trap_limit int 1 run scoreboard players get #.wild.trap_limit blue.config
execute store result storage blue:trims temp.export.gamble_multiplier int 1 run scoreboard players get #.snout.gamble_multiplier blue.config
execute store result storage blue:trims temp.export.gamble_limit int 1 run scoreboard players get #.snout.gamble_limit blue.config
execute store result storage blue:trims temp.export.tracker_range int 1 run scoreboard players get #.wayfinder.tracker_range blue.config
execute store result storage blue:trims temp.export.void_return int 1 run scoreboard players get #.wayfinder.void_return blue.config
execute store result storage blue:trims temp.export.strict_ashen int 1 run scoreboard players get #.rib.strict_ashen blue.config
execute store result storage blue:trims temp.export.strict_scorch int 1 run scoreboard players get #.rib.strict_scorch blue.config
execute store result storage blue:trims temp.export.strict_spawn int 1 run scoreboard players get #.rib.strict_spawn blue.config
execute store result storage blue:trims temp.export.origin_tp int 1 run scoreboard players get #.spire.origin_tp blue.config
execute store result storage blue:trims temp.export.aperture int 1 run scoreboard players get #.spire.aperture blue.config
execute store result storage blue:trims temp.export.no_gravity int 1 run scoreboard players get #.spire.no_gravity blue.config
execute store result storage blue:trims temp.export.bonus_emeralds int 1 run scoreboard players get #.sentry.bonus_emeralds blue.config
execute store result storage blue:trims temp.export.bonus_shards int 1 run scoreboard players get #.silence.bonus_shards blue.config
execute store result storage blue:trims temp.export.vortex_griefing int 1 run scoreboard players get #.silence.vortex_griefing blue.config
execute store result storage blue:trims temp.export.uncap_proficiency int 1 run scoreboard players get #.raiser.uncap_proficiency blue.config
execute store result storage blue:trims temp.export.tnt_bounce int 1 run scoreboard players get #.shaper.tnt_bounce blue.config
execute store result storage blue:trims temp.export.warp_type int 1 run scoreboard players get #.wayfinder.warp_type blue.config
execute store result storage blue:trims temp.export.guidance_range int 1 run scoreboard players get #.spire.guidance_range blue.config
execute store result storage blue:trims temp.export.limit_plunge int 1 run scoreboard players get #.spire.limit_plunge blue.config
execute store result storage blue:trims temp.export.armor_ownership int 1 run scoreboard players get #.tr.armor_ownership blue.config
execute store result storage blue:trims temp.export.egg_bonus int 1 run scoreboard players get #.tr.egg_bonus blue.config
data modify storage blue:trims display set value [['{"text":""}']]
$execute unless score #.tr.objective_type blue.config matches $(ot) run data modify storage blue:trims display append value ['{"translate":"blue.tr.objective_type","fallback":"Objective Type"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.objective_announcements blue.config matches $(oa) run data modify storage blue:trims display append value ['{"translate":"blue.tr.objective_announcements","fallback":"Objective Announcements"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.template_clearing blue.config matches $(tc) run data modify storage blue:trims display append value ['{"translate":"blue.tr.template_clearing","fallback":"Template Clearing"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.require_unlock blue.config matches $(ru) run data modify storage blue:trims display append value ['{"translate":"blue.tr.require_unlock","fallback":"Require Unlock"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.allow_empowerment blue.config matches $(ae) run data modify storage blue:trims display append value ['{"translate":"blue.tr.allow_empowerment","fallback":"Allow Empowerment"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.limit_owned_trims blue.config matches $(lot) run data modify storage blue:trims display append value ['{"translate":"blue.tr.limit_owned_trims","fallback":"Limit Owned Trims"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.random_task_defender blue.config matches $(rtd) run data modify storage blue:trims display append value ['{"translate":"blue.tr.random_task_defender","fallback":"Random Task Defender"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.death_transfer_amount blue.config matches $(dta) run data modify storage blue:trims display append value ['{"translate":"blue.tr.death_transfer_amount","fallback":"Death Transfer Amount"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.manual_transferring blue.config matches $(mt) run data modify storage blue:trims display append value ['{"translate":"blue.tr.manual_transferring","fallback":"Manual Transferring"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.manual_untrimming blue.config matches $(mu) run data modify storage blue:trims display append value ['{"translate":"blue.tr.manual_untrimming","fallback":"Manual Untrimming"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.owner_finder blue.config matches $(of) run data modify storage blue:trims display append value ['{"translate":"blue.tr.owner_finder","fallback":"Owner Finder"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.reload_message blue.config matches $(rm) run data modify storage blue:trims display append value ['{"translate":"blue.tr.reload_message","fallback":"Reload Message"}','{"text":", ","color":"gray"}']
$execute unless score #.flow.wind_barrage_duration blue.config matches $(swbd) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.barrage","fallback":"Wind Barrage Duration"}','{"text":", ","color":"gray"}']
$execute unless score #.shaper.throw_cooldown blue.config matches $(stc) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.throw","fallback":"TNT Throw Cooldown"}','{"text":", ","color":"gray"}']
$execute unless score #.eye.disfigure_time blue.config matches $(sdt) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.disfigure","fallback":"Disfigure Time"}','{"text":", ","color":"gray"}']
$execute unless score #.ward.auto_damage blue.config matches $(sad) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.auto_damage","fallback":"Auto Damage"}','{"text":", ","color":"gray"}']
$execute unless score #.wild.trap_limit blue.config matches $(stl) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.trap","fallback":"Grass Trap Limit"}','{"text":", ","color":"gray"}']
$execute unless score #.snout.gamble_multiplier blue.config matches $(sgm) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.gamble_limit","fallback":"Gamble Limit"}','{"text":", ","color":"gray"}']
$execute unless score #.snout.gamble_limit blue.config matches $(sgl) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.gamble","fallback":"Gamble Multiplier"}','{"text":", ","color":"gray"}']
$execute unless score #.wayfinder.tracker_range blue.config matches $(str) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.tracker","fallback":"Tracker Range"}','{"text":", ","color":"gray"}']
$execute unless score #.wayfinder.void_return blue.config matches $(svr) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.return","fallback":"Void Return"}','{"text":", ","color":"gray"}']
$execute unless score #.rib.strict_skull blue.config matches $(ssk) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.skull","fallback":"Strict Skull"}','{"text":", ","color":"gray"}']
$execute unless score #.rib.strict_scorch blue.config matches $(ssc) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.spawn","fallback":"Strict Spawn"}','{"text":", ","color":"gray"}']
$execute unless score #.rib.strict_ashen blue.config matches $(ssa) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.scorch","fallback":"Strict Scorch"}','{"text":", ","color":"gray"}']
$execute unless score #.rib.strict_spawn blue.config matches $(sss) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.ashen","fallback":"Strict Ashen"}','{"text":", ","color":"gray"}']
$execute unless score #.spire.origin_tp blue.config matches $(sot) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.origin","fallback":"Origin-TP"}','{"text":", ","color":"gray"}']
$execute unless score #.spire.aperture blue.config matches $(sap) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.aperture","fallback":"Aperture"}','{"text":", ","color":"gray"}']
$execute unless score #.spire.no_gravity blue.config matches $(sng) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.gravity","fallback":"No Gravity"}','{"text":", ","color":"gray"}']
$execute unless score #.spire.limit_plunge blue.config matches $(slp) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.limit_plunge","fallback":"Limit Plunge"}','{"text":", ","color":"gray"}']
$execute unless score #.sentry.bonus_emeralds blue.config matches $(sbe) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.emeralds","fallback":"Bonus Emeralds"}','{"text":", ","color":"gray"}']
$execute unless score #.silence.bonus_shards blue.config matches $(sbs) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.shards","fallback":"Bonus Shards"}','{"text":", ","color":"gray"}']
$execute unless score #.silence.vortex_griefing blue.config matches $(svg) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.vortex","fallback":"Vortex Griefing"}','{"text":", ","color":"gray"}']
$execute unless score #.raiser.uncap_proficiency blue.config matches $(sup) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.proficiency","fallback":"Uncap Proficiency"}','{"text":", ","color":"gray"}']
$execute unless score #.shaper.tnt_bounce blue.config matches $(stb) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.tnt_bounce","fallback":"TNT Bounce"}','{"text":", ","color":"gray"}']
$execute unless score #.wayfinder.warp_type blue.config matches $(swt) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.warp_type","fallback":"Warp Type"}','{"text":", ","color":"gray"}']
$execute unless score #.spire.guidance_range blue.config matches $(sgr) run data modify storage blue:trims display append value ['{"translate":"blue.tr.sm.guidance_range","fallback":"Guidance Range"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.armor_ownership blue.config matches $(ao) run data modify storage blue:trims display append value ['{"translate":"blue.tr.armor_ownership","fallback":"Armor-bound Ownership"}','{"text":", ","color":"gray"}']
$execute unless score #.tr.egg_bonus blue.config matches $(eb) run data modify storage blue:trims display append value ['{"translate":"blue.tr.egg_bonus","fallback":"Dragon Egg Bonus"}','{"text":", ","color":"gray"}']
data remove storage blue:trims display[-1][-1]
execute store result score #.temp blue.misc run data get storage blue:trims display
execute if score #.temp blue.misc matches 3.. unless score #.temp blue.misc matches 15..34 run data modify storage blue:trims display[-3][-1] set value '{"text":" and ","color":"gray"}'
execute unless score #.temp blue.misc matches 1 run tellraw @s ""
execute if score #.temp blue.misc matches 1 run data modify storage blue:trims display set value [['{"text":"- ","color":"dark_gray"}','{"translate":"blue.tr.import_failed","fallback":"No settings were changed"}']]
execute if score #.temp blue.misc matches 2..14 run data modify storage blue:trims display append value ['{"translate":"blue.tr.was_changed","fallback":" was changed.","color":"gray"}']
execute if score #.temp blue.misc matches 15..34 run data modify storage blue:trims display append value ['{"translate":"blue.tr.were_changed","fallback":" were changed.","color":"gray"}']
execute if score #.temp blue.misc matches 15..34 run tellraw @s [{"text":"","underlined":true,"hoverEvent":{"action":"show_text","contents":{"storage":"blue:trims","nbt":"display[][]","separator":{"text":". ","color":"black"},"interpret":true}}},{"score":{"name":"#.temp","objective":"blue.misc"}},{"translate":"blue.tr.settings_short","fallback":" Settings were changed.","color":"gray"}]
execute if score #.temp blue.misc matches 35.. run data modify storage blue:trims display set value [['{"text":"- ","color":"dark_gray"}','{"translate":"blue.tr.all_changed","fallback":"All settings were changed","color":"gray"}']]
execute unless score #.temp blue.misc matches 15..34 run tellraw @s {"storage":"blue:trims","nbt":"display[][]","interpret":true,"separator":""}
execute unless score #.temp blue.misc matches 1 run function blue:tr/settings/z/import with storage blue:trims temp.export
$scoreboard players set #.flow.wind_barrage_duration blue.config $(swbd)
$scoreboard players set #.shaper.throw_cooldown blue.config $(stc)
$scoreboard players set #.eye.disfigure_time blue.config $(sdt)
$scoreboard players set #.ward.auto_damage blue.config $(sad)
$scoreboard players set #.wild.trap_limit blue.config $(stl)
$scoreboard players set #.snout.gamble_multiplier blue.config $(sgm)
$scoreboard players set #.snout.gamble_limit blue.config $(sgl)
$scoreboard players set #.wayfinder.tracker_range blue.config $(str)
$scoreboard players set #.wayfinder.void_return blue.config $(svr)
$scoreboard players set #.rib.strict_ashen blue.config $(ssa)
$scoreboard players set #.rib.strict_skull blue.config $(ssk)
$scoreboard players set #.rib.strict_scorch blue.config $(ssc)
$scoreboard players set #.rib.strict_spawn blue.config $(sss)
$scoreboard players set #.spire.origin_tp blue.config $(sot)
$scoreboard players set #.spire.aperture blue.config $(sap)
$scoreboard players set #.spire.no_gravity blue.config $(sng)
$scoreboard players set #.sentry.bonus_emeralds blue.config $(sbe)
$scoreboard players set #.silence.bonus_shards blue.config $(sbs)
$scoreboard players set #.silence.vortex_griefing blue.config $(svg)
$scoreboard players set #.raiser.uncap_proficiency blue.config $(sup)
$scoreboard players set #.tr.objective_type blue.config $(ot)
$scoreboard players set #.tr.objective_announcements blue.config $(oa)
$scoreboard players set #.tr.template_clearing blue.config $(tc)
$scoreboard players set #.tr.require_unlock blue.config $(ru)
$scoreboard players set #.tr.allow_empowerment blue.config $(ae)
$scoreboard players set #.tr.limit_owned_trims blue.config $(lot)
$scoreboard players set #.tr.random_task_defender blue.config $(rtd)
$scoreboard players set #.tr.death_transfer_amount blue.config $(dta)
$scoreboard players set #.tr.manual_transferring blue.config $(mt)
$scoreboard players set #.tr.manual_untrimming blue.config $(mu)
$scoreboard players set #.tr.owner_finder blue.config $(of)
$scoreboard players set #.tr.reload_message blue.config $(rm)
$scoreboard players set #.shaper.tnt_bounce $(stb)
$scoreboard players set #.wayfinder.warp_type $(swt)
$scoreboard players set #.spire.guidance_range $(sgr)
$scoreboard players set #.spire.limit_plunge blue.config $(slp)
$scoreboard players set #.tr.armor_ownership $(ao)
$scoreboard players set #.tr.egg_bonus $(eb)
data remove storage blue:trims temp.export