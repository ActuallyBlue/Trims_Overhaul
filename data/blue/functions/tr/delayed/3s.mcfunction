scoreboard players reset #.60 blue.misc
execute if score #.tr.objective_type blue.config matches 2 run function blue:tr/tasks/loop
scoreboard players add #.18s blue.misc 1
execute unless score #.18s blue.misc matches 6.. run return 0
  scoreboard players reset #.18s blue.misc
  execute as @a[predicate=blue:tr/armored_elytra] run function blue:tr/delayed/armored_elytra_compat
  tag @a[tag=blue.tr.ignore_first] remove blue.tr.ignore_first
  execute as @e[tag=blue.tr.return,type=item] run function blue:tr/item/return_checks
  execute if score #.remove_NoGravity blue.misc matches 1.. run function blue:tr/effects/spire/check_remove
  execute if score #.remove_Silent blue.misc matches 1.. run function blue:tr/effects/silence/check_remove
  execute if score #.wayfinder_stored blue.misc matches 1.. as @a[tag=blue.tr.wayfinder,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/wayfinder
  execute if score #.silence_stored blue.misc matches 1.. as @a[tag=blue.tr.silence,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/silence
  execute if score #.shaper_stored blue.misc matches 1.. as @a[tag=blue.tr.shaper,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/shaper
  execute if score #.raiser_stored blue.misc matches 1.. as @a[tag=blue.tr.raiser,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/raiser
  execute if score #.sentry_stored blue.misc matches 1.. as @a[tag=blue.tr.sentry,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/sentry
  execute if score #.spire_stored blue.misc matches 1.. as @a[tag=blue.tr.spire,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/spire
  execute if score #.coast_stored blue.misc matches 1.. as @a[tag=blue.tr.coast,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/coast
  execute if score #.snout_stored blue.misc matches 1.. as @a[tag=blue.tr.snout,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/snout
  execute if score #.ward_stored blue.misc matches 1.. as @a[tag=blue.tr.ward,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/ward
  execute if score #.dune_stored blue.misc matches 1.. as @a[tag=blue.tr.dune,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/dune
  execute if score #.wild_stored blue.misc matches 1.. as @a[tag=blue.tr.wild,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/wild
  execute if score #.tide_stored blue.misc matches 1.. as @a[tag=blue.tr.tide,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/tide
  execute if score #.host_stored blue.misc matches 1.. as @a[tag=blue.tr.host,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/host
  execute if score #.eye_stored blue.misc matches 1.. as @a[tag=blue.tr.eye,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/eye
  execute if score #.rib_stored blue.misc matches 1.. as @a[tag=blue.tr.rib,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/rib
  execute if score #.vex_stored blue.misc matches 1.. as @a[tag=blue.tr.vex,scores={blue.tr.combat=200..},gamemode=!spectator,limit=1] at @s run function blue:tr/delayed/return/vex
  tag @a[tag=blue.tr.wild.cd] remove blue.tr.wild.cd
  scoreboard players add #.36s blue.misc 1
  execute unless score #.36s blue.misc matches 2.. run return 0
    execute if score #.tr.limit_owned_trims blue.config matches 1.. as @a run function blue:tr/delayed/trim_limit
    execute if entity @a[scores={color=0},limit=1] run schedule function blue:tr/delayed/color_compat 3t
    scoreboard players reset #.36s blue.misc
    execute as @a[gamemode=creative,advancements={blue:tr/tags={tutorial_creative=false}}] at @s run function blue:tr/delayed/creative_guide
    execute as @a[advancements={blue:tr/tags={tutorial_new_player=false}}] at @s run function blue:tr/delayed/player_guide
    scoreboard players reset @a[scores={Trims_Menu.BLUE=..-1}] Trims_Menu.BLUE
    scoreboard players enable @a Trims_Menu.BLUE
    tag @a[tag=blue.tr.RTDCD] remove blue.tr.RTDCD
    scoreboard players add #.108s blue.misc 1
    execute unless score #.108s blue.misc matches 3.. run return 0
      scoreboard players reset #.108s blue.misc
      execute store result score #.difficulty blue.misc run difficulty
      execute if score #.difficulty blue.misc matches ..1 unless data storage blue:trims merge.tnt{fuse:30s} run data merge storage blue:trims {merge:{tnt:{Fuse:30s,fuse:30s,explosion_power:3}}}
      execute if score #.difficulty blue.misc matches 2 unless data storage blue:trims merge.tnt{fuse:40s} run data merge storage blue:trims {merge:{tnt:{Fuse:40s,fuse:40s,explosion_power:2.5}}}
      execute if score #.difficulty blue.misc matches 3.. unless data storage blue:trims merge.tnt{fuse:50s} run data merge storage blue:trims {merge:{tnt:{Fuse:50s,fuse:50s,explosion_power:2}}}