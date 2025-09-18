tag @s add blue.tr.respawn
stopsound @s * item.elytra.flying
advancement revoke @s only blue:tr/died
scoreboard players reset @s blue.tr.fear
scoreboard players reset @s blue.tr.died
scoreboard players set @s blue.tr.combat 0
scoreboard players add #.wait_for_respawn blue.misc 1
scoreboard players operation #.link blue.id = @s blue.id
scoreboard players reset #.player blue.tr.died
execute if score #.tr.limit_owned_trims blue.config matches 1 store success score #.player blue.tr.died if score #.tr.death_transfer_amount blue.config matches 1.. on attacker run tag @s[type=player,advancements={blue:tr/blacklist=false,blue:tr/tags={has_trim=false}},tag=!blue.tr.respawn] add blue.tr.killer
execute unless score #.tr.limit_owned_trims blue.config matches 1 store success score #.player blue.tr.died if score #.tr.death_transfer_amount blue.config matches 1.. on attacker run tag @s[type=player,advancements={blue:tr/blacklist=false},tag=!blue.tr.respawn] add blue.tr.killer
data modify storage blue:data trims.merge.return_item.Owner set from entity @s UUID
execute if score #.player blue.tr.died matches 1 run data modify storage blue:data trims.merge.item_data.Owner set from entity @a[tag=blue.tr.killer,limit=1] UUID
scoreboard players set #.drop_temp blue.misc 0
execute if score #.tr.death_transfer_amount blue.config matches 1000 run function blue:tr/inv/died/hardcore
data remove storage blue:data trims.fake_inv
execute as @e[type=item,distance=..3,tag=!blue.tr.checked] run function blue:tr/inv/died/check_keep
advancement grant @s only blue:tr/inv_checks
execute unless score #.player blue.tr.died matches 1 run return fail
execute if entity @s[tag=blue.tr.wayfinder] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={wayfinder=false}},limit=1] run function blue:tr/inv/died/macro {trim:wayfinder,translate:"Wayfinder","color":"#F1FFC8"}
execute if entity @s[tag=blue.tr.silence] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={silence=false}},limit=1] run function blue:tr/inv/died/macro {trim:silence,translate:"Silence","color":"#3842Cf"}
execute if entity @s[tag=blue.tr.raiser] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={raiser=false}},limit=1] run function blue:tr/inv/died/macro {trim:raiser,translate:"Raiser","color":"#95B623"}
execute if entity @s[tag=blue.tr.shaper] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={shaper=false}},limit=1] run function blue:tr/inv/died/macro {trim:shaper,translate:"Shaper","color":"#8F8F8F"}
execute if entity @s[tag=blue.tr.sentry] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={sentry=false}},limit=1] run function blue:tr/inv/died/macro {trim:sentry,translate:"Sentry","color":"#4B885B"}
execute if entity @s[tag=blue.tr.spire] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={spire=false}},limit=1] run function blue:tr/inv/died/macro {trim:spire,translate:"Spire","color":"#BE20C7"}
execute if entity @s[tag=blue.tr.coast] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={coast=false}},limit=1] run function blue:tr/inv/died/macro {trim:coast,translate:"Coast","color":"#C1C888"}
execute if entity @s[tag=blue.tr.snout] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={snout=false}},limit=1] run function blue:tr/inv/died/macro {trim:snout,translate:"Snout","color":"#F2B01A"}
execute if entity @s[tag=blue.tr.ward] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={ward=false}},limit=1] run function blue:tr/inv/died/macro {trim:ward,translate:"Ward","color":"#5C70AE"}
execute if entity @s[tag=blue.tr.bolt] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={bolt=false}},limit=1] run function blue:tr/inv/died/macro {trim:bolt,translate:"Bolt","color":"#B65D1A"}
execute if entity @s[tag=blue.tr.flow] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={flow=false}},limit=1] run function blue:tr/inv/died/macro {trim:flow,translate:"Flow","color":"#85B2C5"}
execute if entity @s[tag=blue.tr.dune] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={dune=false}},limit=1] run function blue:tr/inv/died/macro {trim:dune,translate:"Dune","color":"#E7C547"}
execute if entity @s[tag=blue.tr.wild] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={wild=false}},limit=1] run function blue:tr/inv/died/macro {trim:wild,translate:"Wild","color":"#00D529"}
execute if entity @s[tag=blue.tr.tide] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={tide=false}},limit=1] run function blue:tr/inv/died/macro {trim:tide,translate:"Tide","color":"#199ADD"}
execute if entity @s[tag=blue.tr.host] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={host=false}},limit=1] run function blue:tr/inv/died/macro {trim:host,translate:"Host","color":"#A34646"}
execute if entity @s[tag=blue.tr.eye] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={eye=false}},limit=1] run function blue:tr/inv/died/macro {trim:eye,translate:"Eye","color":"#1F8A46"}
execute if entity @s[tag=blue.tr.rib] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={rib=false}},limit=1] run function blue:tr/inv/died/macro {trim:rib,translate:"Rib","color":"#E6484B"}
execute if entity @s[tag=blue.tr.vex] if entity @a[tag=blue.tr.killer,advancements={blue:tr/blacklist={vex=false}},limit=1] run function blue:tr/inv/died/macro {trim:vex,translate:"Vex","color":"#CFC6A5"}
tag @a[tag=blue.tr.killer,limit=1] remove blue.tr.killer