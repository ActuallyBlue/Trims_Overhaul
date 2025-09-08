scoreboard players reset #.60 blue.misc
execute if score #.tr.objective_type blue.config matches 2 run function blue:tr/tasks/loop
scoreboard players add #.18s blue.misc 1
execute unless score #.18s blue.misc matches 6.. run return 0
  scoreboard players reset #.18s blue.misc
  execute as @a[predicate=blue:tr/armored_elytra] run function blue:tr/delayed/armored_elytra_compat
  tag @a[tag=blue.tr.ignore_first] remove blue.tr.ignore_first
  execute as @e[type=item,tag=blue.tr.return] run function blue:tr/item/return_checks
  execute if score #.remove_NoGravity blue.misc matches 1.. run function blue:tr/effects/spire/check_remove
  execute if score #.remove_Silent blue.misc matches 1.. run function blue:tr/effects/silence/check_remove
  execute if score #.wayfinder_stored blue.misc matches 1.. as @a[tag=blue.tr.wayfinder,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/wayfinder
  execute if score #.silence_stored blue.misc matches 1.. as @a[tag=blue.tr.silence,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/silence
  execute if score #.shaper_stored blue.misc matches 1.. as @a[tag=blue.tr.shaper,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/shaper
  execute if score #.raiser_stored blue.misc matches 1.. as @a[tag=blue.tr.raiser,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/raiser
  execute if score #.sentry_stored blue.misc matches 1.. as @a[tag=blue.tr.sentry,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/sentry
  execute if score #.spire_stored blue.misc matches 1.. as @a[tag=blue.tr.spire,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/spire
  execute if score #.coast_stored blue.misc matches 1.. as @a[tag=blue.tr.coast,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/coast
  execute if score #.snout_stored blue.misc matches 1.. as @a[tag=blue.tr.snout,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/snout
  execute if score #.ward_stored blue.misc matches 1.. as @a[tag=blue.tr.ward,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/ward
  execute if score #.dune_stored blue.misc matches 1.. as @a[tag=blue.tr.dune,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/dune
  execute if score #.wild_stored blue.misc matches 1.. as @a[tag=blue.tr.wild,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/wild
  execute if score #.tide_stored blue.misc matches 1.. as @a[tag=blue.tr.tide,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/tide
  execute if score #.host_stored blue.misc matches 1.. as @a[tag=blue.tr.host,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/host
  execute if score #.eye_stored blue.misc matches 1.. as @a[tag=blue.tr.eye,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/eye
  execute if score #.rib_stored blue.misc matches 1.. as @a[tag=blue.tr.rib,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/rib
  execute if score #.vex_stored blue.misc matches 1.. as @a[tag=blue.tr.vex,scores={blue.tr.combat=500..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/trims/vex
  tag @a[tag=blue.tr.wild.cd] remove blue.tr.wild.cd
  scoreboard players add #.36s blue.misc 1
  execute unless score #.36s blue.misc matches 2.. run return 0
    execute as @a[advancements={blue:tr/tags={has_trim=false}}] unless entity @s[tag=!blue.tr.wayfinder,tag=!blue.tr.silence,tag=!blue.tr.shaper,tag=!blue.tr.raiser,tag=!blue.tr.sentry,tag=!blue.tr.spire,tag=!blue.tr.coast,tag=!blue.tr.snout,tag=!blue.tr.ward,tag=!blue.tr.dune,tag=!blue.tr.wild,tag=!blue.tr.tide,tag=!blue.tr.host,tag=!blue.tr.eye,tag=!blue.tr.rib,tag=!blue.tr.vex] run advancement grant @s only blue:tr/tags has_trim
    advancement revoke @a[advancements={blue:tr/tags={has_trim=false}},tag=!blue.tr.wayfinder,tag=!blue.tr.silence,tag=!blue.tr.shaper,tag=!blue.tr.raiser,tag=!blue.tr.sentry,tag=!blue.tr.spire,tag=!blue.tr.coast,tag=!blue.tr.snout,tag=!blue.tr.ward,tag=!blue.tr.dune,tag=!blue.tr.wild,tag=!blue.tr.tide,tag=!blue.tr.host,tag=!blue.tr.eye,tag=!blue.tr.rib,tag=!blue.tr.vex] only blue:tr/tags has_trim
    execute if entity @a[scores={color=0},limit=1] run schedule function blue:tr/delayed/color_compat 3t
    scoreboard players reset #.36s blue.misc
    execute as @a[advancements={blue:tr/tags={tutorial_new_player=false}}] at @s run function blue:tr/delayed/player_guide
    execute as @a[gamemode=creative,advancements={blue:tr/tags={tutorial_creative=false}}] at @s run function blue:tr/delayed/creative_guide
    scoreboard players reset @a[scores={TrimCMDs.BLUE=..-1}] TrimCMDs.BLUE
    scoreboard players enable @a TrimCMDs.BLUE
    kill b163102f-0-0-0-200000000
    summon marker 0.0 0 0.0 {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,0,2,0]}
    execute in overworld unless loaded 8 0 8 run forceload add 8 8
    tag @a[tag=blue.tr.RTDCD] remove blue.tr.RTDCD
    scoreboard players add #.108s blue.misc 1
    execute unless score #.108s blue.misc matches 3.. run return 0
      scoreboard players reset #.108s blue.misc
      execute store result score #.difficulty blue.misc run difficulty
      execute if score #.difficulty blue.misc matches ..1 unless data storage blue:data trims.merge.tnt{fuse:30s} run data merge storage blue:data {trims:{merge:{tnt:{Fuse:30s,fuse:30s,explosion_power:3}}}}
      execute if score #.difficulty blue.misc matches 2 unless data storage blue:data trims.merge.tnt{fuse:40s} run data merge storage blue:data {trims:{merge:{tnt:{Fuse:40s,fuse:40s,explosion_power:2.5}}}}
      execute if score #.difficulty blue.misc matches 3 unless data storage blue:data trims.merge.tnt{fuse:50s} run data merge storage blue:data {trims:{merge:{tnt:{Fuse:50s,fuse:50s,explosion_power:2}}}}