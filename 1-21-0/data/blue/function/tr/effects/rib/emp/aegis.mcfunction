execute if score #.rib.ambient blue.misc matches 3 run particle flame ~ ~0.7 ~ 0.2 0.3 0.2 0.01 1
particle small_flame ~ ~0.7 ~ 0.2 0.3 0.2 0.02 1
execute as @n[type=#blue:shared/projectiles,tag=!blue.tr.rib_checked,distance=..5] at @s run function blue:tr/effects/rib/emp/aegis_burn
execute if score #.rib.strict_scorch blue.config matches 1 if score @s blue.tr.combat matches -100.. run return fail
execute store success score #.temp blue.misc if predicate {"condition":"any_of","terms":[{"condition":"entity_properties","entity":"this","predicate":{"flags":{"is_on_fire":true}}},{"condition":"location_check","predicate":{"dimension":"the_nether"}}]}
execute unless score #.temp blue.misc matches 1 unless predicate blue:r/03c run return fail
execute if score #.temp blue.misc matches 1 unless predicate {"condition":"random_chance","chance":0.004} run return fail
execute as @a[distance=..4.5,advancements={blue:tr/trust={rib=false}},team=!blue.tr.rib] run damage @s 5 on_fire by @a[tag=blue.tr.rib,limit=1]
execute at @a[distance=..4.5,advancements={blue:tr/trust={rib=false}},team=!blue.tr.rib,gamemode=!spectator] run particle small_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 6
execute as @e[type=!#blue:shared/peaceful,type=!player,distance=..4.5,team=!blue.tr.rib] run damage @s 5 on_fire by @a[tag=blue.tr.rib,limit=1]
execute at @e[type=!#blue:shared/peaceful,type=!player,distance=..4.5,team=!blue.tr.rib] run particle small_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 6
particle flame ~ ~1 ~ 0 0.2 0 0.2 20 normal @a[scores={blue.particles=2..}]
playsound entity.blaze.shoot player @a ~ ~ ~ 1 1.25
particle flame ~ ~1 ~ 0 0.2 0 0.2 30