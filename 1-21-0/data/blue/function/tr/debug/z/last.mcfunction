playsound ui.button.click player @s 0 -128 0 0 1 0.75
scoreboard objectives add blue.world_data.get dummy
scoreboard players set -1 blue.world_data.get -1
scoreboard players add #.holder blue.world_data.get 0
scoreboard players add #.entity blue.world_data.get 0
execute store result score #.all blue.world_data.get if entity @e
execute store result score #.current blue.world_data.get if entity @a
execute store result score #.items blue.world_data.get if entity @e[type=item]
execute store result score #.return blue.world_data.get if entity @e[type=item,tag=blue.tr.return]
execute store result score #.noe blue.world_data.get if entity @e[type=#blue:tr/no_effects,type=!player]
execute in overworld store success score #.loaded blue.world_data.get if loaded 8 -63 8
execute in overworld store result score #.force blue.world_data.get run forceload add 8 8
scoreboard players operation #.version blue.world_data.get = #.TrimsOverhaul blue.misc
scoreboard players operation #.version blue.world_data.get *= -1 blue.world_data.get
execute in overworld positioned 8 -63 8 store result score #.entity blue.world_data.get if entity @e[distance=..10]
execute as b163102f-0-0-0-100000000 if entity @s[type=armor_stand] run scoreboard players set #.holder blue.world_data.get 1
execute if score #.wayfinder_stored blue.misc matches 1.. run scoreboard players operation #.wayfinder blue.world_data.get = #.wayfinder_stored blue.misc
execute if score #.silence_stored blue.misc matches 1.. run scoreboard players operation #.silence blue.world_data.get = #.silence_stored blue.misc
execute if score #.shaper_stored blue.misc matches 1.. run scoreboard players operation #.shaper blue.world_data.get = #.shaper_stored blue.misc
execute if score #.raiser_stored blue.misc matches 1.. run scoreboard players operation #.raiser blue.world_data.get = #.raiser_stored blue.misc
execute if score #.sentry_stored blue.misc matches 1.. run scoreboard players operation #.sentry blue.world_data.get = #.sentry_stored blue.misc
execute if score #.spire_stored blue.misc matches 1.. run scoreboard players operation #.spire blue.world_data.get = #.spire_stored blue.misc
execute if score #.coast_stored blue.misc matches 1.. run scoreboard players operation #.coast blue.world_data.get = #.coast_stored blue.misc
execute if score #.snout_stored blue.misc matches 1.. run scoreboard players operation #.snout blue.world_data.get = #.snout_stored blue.misc
execute if score #.ward_stored blue.misc matches 1.. run scoreboard players operation #.ward blue.world_data.get = #.ward_stored blue.misc
execute if score #.dune_stored blue.misc matches 1.. run scoreboard players operation #.dune blue.world_data.get = #.dune_stored blue.misc
execute if score #.wild_stored blue.misc matches 1.. run scoreboard players operation #.wild blue.world_data.get = #.wild_stored blue.misc
execute if score #.tide_stored blue.misc matches 1.. run scoreboard players operation #.tide blue.world_data.get = #.tide_stored blue.misc
execute if score #.host_stored blue.misc matches 1.. run scoreboard players operation #.host blue.world_data.get = #.host_stored blue.misc
execute if score #.bolt_stored blue.misc matches 1.. run scoreboard players operation #.bolt blue.world_data.get = #.bolt_stored blue.misc
execute if score #.flow_stored blue.misc matches 1.. run scoreboard players operation #.flow blue.world_data.get = #.flow_stored blue.misc
execute if score #.eye_stored blue.misc matches 1.. run scoreboard players operation #.eye blue.world_data.get = #.eye_stored blue.misc
execute if score #.rib_stored blue.misc matches 1.. run scoreboard players operation #.rib blue.world_data.get = #.rib_stored blue.misc
execute if score #.vex_stored blue.misc matches 1.. run scoreboard players operation #.vex blue.world_data.get = #.vex_stored blue.misc
execute store result score #.KeepInventory blue.misc run gamerule keepInventory
scoreboard players add #.wayfinder blue.world_data.get 0
scoreboard players add #.silence blue.world_data.get 0
scoreboard players add #.shaper blue.world_data.get 0
scoreboard players add #.raiser blue.world_data.get 0
scoreboard players add #.sentry blue.world_data.get 0
scoreboard players add #.spire blue.world_data.get 0
scoreboard players add #.coast blue.world_data.get 0
scoreboard players add #.snout blue.world_data.get 0
scoreboard players add #.ward blue.world_data.get 0
scoreboard players add #.dune blue.world_data.get 0
scoreboard players add #.wild blue.world_data.get 0
scoreboard players add #.tide blue.world_data.get 0
scoreboard players add #.host blue.world_data.get 0
scoreboard players add #.flow blue.world_data.get 0
scoreboard players add #.bolt blue.world_data.get 0
scoreboard players add #.eye blue.world_data.get 0
scoreboard players add #.rib blue.world_data.get 0
scoreboard players add #.vex blue.world_data.get 0
tellraw @s [{"text":"","color":"gray"},{"text":"\n-----------------------------------\n","color":"blue"},"F",{"score":{"name":"#.force","objective":"blue.world_data.get"}}," L",{"score":{"name":"#.loaded","objective":"blue.world_data.get"}}," E",{"score":{"name":"#.entity","objective":"blue.world_data.get"}}," A",{"score":{"name":"#.holder","objective":"blue.world_data.get"}}," V",{"score":{"name":"#.version","objective":"blue.world_data.get"}}," M",{"storage":"blue:data","nbt":"global.minecraft"}," K",{"score":{"name":"#.KeepInventory","objective":"blue.misc"}}," D",{"score":{"name":"#.tr.death_transfer_amount","objective":"blue.config"}}," R",{"score":{"name":"#.tr.require_unlock","objective":"blue.config"}}," L",{"score":{"name":"#.tr.limit_owned_trims","objective":"blue.config"}}," O",{"score":{"name":"#.tr.objective_type","objective":"blue.config"}}," R",{"score":{"name":"#.tr.reload_message","objective":"blue.config"}},"\nW"," S"," S"," R"," S"," S"," C"," S"," W"," D"," W"," T"," H"," E"," R"," V"," B"," F\n",{"score":{"name":"#.tr.wayfinder_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.silence_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.shaper_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.raiser_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.sentry_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.spire_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.coast_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.snout_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.ward_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.dune_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.wild_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.tide_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.host_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.eye_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.rib_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.vex_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.bolt_toggle","objective":"blue.config"}}," ",{"score":{"name":"#.tr.flow_toggle","objective":"blue.config"}},"\n",{"score":{"name":"#.tr.wayfinder_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.silence_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.shaper_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.raiser_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.sentry_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.spire_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.coast_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.snout_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.ward_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.dune_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.wild_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.tide_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.host_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.eye_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.rib_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.vex_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.bolt_completed","objective":"blue.config"}}," ",{"score":{"name":"#.tr.flow_completed","objective":"blue.config"}},"\n",{"score":{"name":"#.wayfinder","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.silence","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.shaper","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.raiser","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.sentry","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.spire","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.coast","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.snout","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.ward","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.dune","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.wild","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.tide","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.host","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.eye","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.rib","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.vex","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.bolt","objective":"blue.world_data.get"}}," ",{"score":{"name":"#.flow","objective":"blue.world_data.get"}},"\nT",{"score":{"name":".val","objective":"blue.id"}}," C",{"score":{"name":"#.current","objective":"blue.world_data.get"}}," A",{"score":{"name":"#.all","objective":"blue.world_data.get"}}," I",{"score":{"name":"#.items","objective":"blue.world_data.get"}}," T",{"score":{"name":".val","objective":"blue.id"}}," R",{"score":{"name":"#.return","objective":"blue.world_data.get"}},{"text":"\n- - - - - - - - - - - - - - - - - - -\n","color":"dark_gray"},{"entity":"@s","nbt":"Tags[]","color":"gray"},{"text":"\n-----------------------------------","color":"blue"}]
scoreboard objectives remove blue.world_data.get