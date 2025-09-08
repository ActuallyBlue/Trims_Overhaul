execute in overworld positioned 200600 1 200600 unless entity @s[distance=..1] run data modify entity @s Glowing set value 0b
execute in overworld run tp 200600 1 200600
tp @s[tag=blue.tr.wayfinder_item] @a[tag=blue.tr.wayfinder,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.silence_item] @a[tag=blue.tr.silence,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.shaper_item] @a[tag=blue.tr.shaper,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.raiser_item] @a[tag=blue.tr.raiser,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.sentry_item] @a[tag=blue.tr.sentry,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.spire_item] @a[tag=blue.tr.spire,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.coast_item] @a[tag=blue.tr.coast,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.snout_item] @a[tag=blue.tr.snout,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.ward_item] @a[tag=blue.tr.ward,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.bolt_item] @a[tag=blue.tr.bolt,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.flow_item] @a[tag=blue.tr.flow,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.dune_item] @a[tag=blue.tr.dune,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.wild_item] @a[tag=blue.tr.wild,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.tide_item] @a[tag=blue.tr.tide,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.host_item] @a[tag=blue.tr.host,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.eye_item] @a[tag=blue.tr.eye,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.rib_item] @a[tag=blue.tr.rib,scores={blue.tr.combat=500..},limit=1]
tp @s[tag=blue.tr.vex_item] @a[tag=blue.tr.vex,scores={blue.tr.combat=500..},limit=1]
scoreboard players set @s blue.misc 0
execute at @s[distance=1..] run title @p[distance=..2] actionbar {"translate":"blue.tr.armor_return","fallback":"A trimmed armor piece has returned to you","color":"gray"}
execute at @s[distance=1..] run playsound entity.enderman.teleport player @p[distance=..2] ~ ~0.5 ~ 0.7 0.8
execute at @s[distance=1..] run particle portal ~ ~1 ~ 0.05 0 0.05 0.1 32