tag @s add blue.tr.rib
advancement grant @s only blue:tr/trust rib
advancement grant @a only blue:tr/display/rib
scoreboard players set @s blue.tr.lava_seconds 0
scoreboard players set #.tr.rib_completed blue.config 1
advancement revoke @s only blue:tr/quests/rib_complete
team add blue.tr.rib
data modify storage blue:trims logs.append.trim set value {"translate":"Rib","color":"#E6484B"}
function blue:tr/completion/z/setup
data modify storage blue:trims rib.owner.text set from storage blue:shared player_name
data modify storage blue:trims rib.owner.color set value "#E6484B"
execute if score #.tr.armor_ownership blue.config matches 1 run return fail
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#E6484B"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Rib","color":"#E6484B"}]
function blue:tr/delayed/cmd/msg/rib
loot give @s loot blue:tr/rib
scoreboard players reset #.rib_stored blue.misc
execute store result score #.temp blue.misc run clear @s rib_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.rib_stored blue.misc 4
execute as @a[distance=..4.5,advancements={blue:tr/trust={rib=false}},team=!blue.tr.rib] run damage @s 14 blue:tr/fire by @a[tag=blue.tr.rib,limit=1]
execute at @a[distance=..4.5,advancements={blue:tr/trust={rib=false}},team=!blue.tr.rib] run particle small_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 6
execute as @e[type=!#blue:shared/peaceful,type=!player,distance=..4.5,team=!blue.tr.rib] run damage @s 14 blue:tr/fire by @a[tag=blue.tr.rib,limit=1]
execute at @e[type=!#blue:shared/peaceful,type=!player,distance=..4.5,team=!blue.tr.rib] run particle small_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 6
particle flame ~ ~1 ~ 0 0.2 0 0.2 20 normal @a[scores={blue.particles=2..}]
playsound entity.blaze.shoot player @a ~ ~ ~ 1 1.25
playsound entity.blaze.shoot player @a ~ ~ ~ 2 1.25
particle lava ~ ~1 ~ 0.5 0.5 0.5 0 48
particle flame ~ ~1 ~ 0 0.2 0 0.2 30