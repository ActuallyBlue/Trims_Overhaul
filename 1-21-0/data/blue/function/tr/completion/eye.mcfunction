execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#1F8A46"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Eye","color":"#1F8A46"}]
tag @s add blue.tr.eye
advancement grant @s only blue:tr/trust eye
advancement grant @a only blue:tr/actual/eye
scoreboard players set @s blue.tr.silverfish_killed 0
scoreboard players set #.tr.eye_completed blue.config 1
advancement revoke @s only blue:tr/quests/eye
scoreboard objectives add blue.tr.fear dummy
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Eye","color":"#1F8A46"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/eye
loot give @s loot blue:tr/eye
scoreboard players reset #.eye_stored blue.misc
execute store result score #.temp blue.misc run clear @s eye_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.eye_stored blue.misc 4
data modify storage blue:data trims.eye.owner.text set from storage blue:data player_name
data modify storage blue:data trims.eye.owner.color set value "#1F8A46"
particle scrape ~ ~1 ~ 0.3 0.3 0.3 70 400
particle glow ~ ~2 ~ 5 3 5 0 180 force
playsound entity.phantom.ambient player @a ~ ~ ~ 2.5 2
playsound entity.phantom.ambient player @a ~ ~ ~ 2.5 1
playsound entity.phantom.ambient player @a ~ ~ ~ 2.5 0.5
playsound block.end_portal.spawn player @a ~ ~ ~ 1 2
effect give @e[type=!#blue:tr/no_effects,distance=0.01..32] glowing 6 0 true
effect give @s darkness 2 0 true