tag @s add blue.tr.respawn
execute if entity @s[tag=blue.tr.shaper.falling] run function blue:tr/effects/shaper/emp/fall
stopsound @s * item.elytra.flying
advancement revoke @s only blue:tr/died
scoreboard players reset @s blue.tr.fear
scoreboard players reset @s blue.tr.died
scoreboard players set @s blue.tr.combat 0
scoreboard players add #.tr.respawning blue.misc 1
scoreboard players operation #.link blue.id = @s blue.id
scoreboard players reset #.player blue.tr.died
execute if score #.tr.limit_owned_trims blue.config matches 1 store success score #.player blue.tr.died if score #.tr.death_transfer_amount blue.config matches 1.. on attacker run tag @s[type=player,advancements={blue:tr/blacklist=false,blue:tr/tags={has_trim=false}},tag=!blue.tr.respawn] add blue.tr.killer
execute unless score #.tr.limit_owned_trims blue.config matches 1 store success score #.player blue.tr.died if score #.tr.death_transfer_amount blue.config matches 1.. on attacker run tag @s[type=player,advancements={blue:tr/blacklist=false},tag=!blue.tr.respawn] add blue.tr.killer
data modify storage blue:trims merge.return_item.Owner set from entity @s UUID
execute if score #.player blue.tr.died matches 1 run data modify storage blue:trims merge.item_data.Owner set from entity @a[tag=blue.tr.killer,limit=1] UUID
scoreboard players set #.drop_temp blue.misc 0
execute if score #.tr.death_transfer_amount blue.config matches 1000 if score @s blue.tr.current_trim matches 1.. run function blue:tr/inv/died/hardcore
data remove storage blue:trims fake_inv
execute as @e[distance=..3,tag=!blue.tr.checked,type=item] run function blue:tr/inv/died/check_keep
execute if score #.tr.death_untrim blue.config matches 1 as @e[distance=..3,tag=blue.tr.untrim_item,tag=!blue.tr.checked,type=item] run function blue:tr/inv/died/check_keep
advancement grant @s only blue:tr/inv_checks
execute unless score #.player blue.tr.died matches 1 run return 0
execute if entity @s[tag=blue.tr.wayfinder] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={wayfinder=false}},limit=1] run function blue:tr/inv/died/move/wayfinder
execute if entity @s[tag=blue.tr.silence] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={silence=false}},limit=1] run function blue:tr/inv/died/move/silence
execute if entity @s[tag=blue.tr.raiser] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={raiser=false}},limit=1] run function blue:tr/inv/died/move/raiser
execute if entity @s[tag=blue.tr.shaper] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={shaper=false}},limit=1] run function blue:tr/inv/died/move/shaper
execute if entity @s[tag=blue.tr.sentry] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={sentry=false}},limit=1] run function blue:tr/inv/died/move/sentry
execute if entity @s[tag=blue.tr.spire] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={spire=false}},limit=1] run function blue:tr/inv/died/move/spire
execute if entity @s[tag=blue.tr.coast] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={coast=false}},limit=1] run function blue:tr/inv/died/move/coast
execute if entity @s[tag=blue.tr.snout] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={snout=false}},limit=1] run function blue:tr/inv/died/move/snout
execute if entity @s[tag=blue.tr.ward] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={ward=false}},limit=1] run function blue:tr/inv/died/move/ward
execute if entity @s[tag=blue.tr.dune] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={dune=false}},limit=1] run function blue:tr/inv/died/move/dune
execute if entity @s[tag=blue.tr.wild] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={wild=false}},limit=1] run function blue:tr/inv/died/move/wild
execute if entity @s[tag=blue.tr.tide] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={tide=false}},limit=1] run function blue:tr/inv/died/move/tide
execute if entity @s[tag=blue.tr.host] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={host=false}},limit=1] run function blue:tr/inv/died/move/host
execute if entity @s[tag=blue.tr.eye] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={eye=false}},limit=1] run function blue:tr/inv/died/move/eye
execute if entity @s[tag=blue.tr.rib] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={rib=false}},limit=1] run function blue:tr/inv/died/move/rib
execute if entity @s[tag=blue.tr.vex] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={vex=false}},limit=1] run function blue:tr/inv/died/move/vex
tag @a[tag=blue.tr.killer,limit=1] remove blue.tr.killer