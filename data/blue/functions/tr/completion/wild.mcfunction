tag @s add blue.tr.wild
advancement grant @s only blue:tr/trust wild
advancement grant @a only blue:tr/display/wild
scoreboard players set @s blue.tr.animals_bred 0
scoreboard players set @s blue.tr.animals_tamed 0
scoreboard players set #.tr.wild_completed blue.config 1
advancement revoke @s only blue:tr/quests/wild_tames
data modify storage blue:data trims.logs.append.trim set value {"translate":"Wild","color":"#00D529"}
function blue:tr/completion/z/setup
data modify storage blue:data trims.wild.owner.text set from storage blue:data player_name
data modify storage blue:data trims.wild.owner.color set value "#00D529"
execute if score #.tr.armor_ownership blue.config matches 1 run return 0
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#00D529"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Wild","color":"#00D529"}]
function blue:tr/delayed/cmd/msg/wild
loot give @s loot blue:tr/wild
scoreboard players reset #.wild_stored blue.misc
execute store result score #.temp blue.misc run clear @s wild_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.wild_stored blue.misc 4
playsound entity.player.levelup player @a ~ ~ ~ 2.5 0.8
particle spore_blossom_air ~ ~1.2 ~ 0.6 0.8 0.6 1 256
particle spore_blossom_air ~ ~1.2 ~ 2.5 2 2.5 1 256