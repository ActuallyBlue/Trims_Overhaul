tag @s add blue.tr.bolt
advancement grant @s only blue:tr/trust bolt
advancement grant @a only blue:tr/display/bolt
scoreboard players set @s blue.tr.plain_vault 0
scoreboard players set #.tr.bolt_completed blue.config 1
advancement revoke @s only blue:tr/quests/bolt
data modify storage blue:trims logs.append.trim set value {"translate":"Bolt","color":"#B65D1A"}
function blue:tr/completion/z/setup
data modify storage blue:trims bolt.owner.text set from storage blue:shared player_name
data modify storage blue:trims bolt.owner.color set value "#B65D1A"
execute if score #.tr.armor_ownership blue.config matches 1 run return fail
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#B65D1A"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Bolt","color":"#B65D1A"}]
function blue:tr/delayed/cmd/msg/bolt
loot give @s loot blue:tr/bolt
scoreboard players reset #.bolt_stored blue.misc
execute store result score #.temp blue.misc run clear @s bolt_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.bolt_stored blue.misc 4
execute positioned ^6 ^1 ^-5 positioned ~ ~-0.5 ~ facing entity @s eyes run function blue:tr/effects/bolt/conduct/player/start
execute positioned ^-8 ^ ^1 positioned ~ ~-0.5 ~ facing entity @s eyes run function blue:tr/effects/bolt/conduct/player/start
execute positioned ^-3 ^-5 ^-2 positioned ~ ~-0.5 ~ facing entity @s eyes run function blue:tr/effects/bolt/conduct/player/start
playsound block.trial_spawner.detect_player player @s ~ ~ ~ 2.5 0.75
playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 2.5 2
particle trial_spawner_detection ~ ~0.6 ~ 3 3 3 0 148