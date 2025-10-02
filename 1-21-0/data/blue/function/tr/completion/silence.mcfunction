execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#3842Cf"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Silence","color":"#3842Cf"}]
tag @s add blue.tr.silence
advancement grant @s only blue:tr/trust silence
advancement grant @a only blue:tr/actual/silence
scoreboard players set #.tr.silence_completed blue.config 1
advancement revoke @s only blue:tr/quests/silence
team add blue.tr.silence
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Silence","color":"#3842Cf"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/silence
loot give @s loot blue:tr/silence
scoreboard players reset #.silence_stored blue.misc
execute store result score #.temp blue.misc run clear @s silence_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.silence_stored blue.misc 4
data modify storage blue:data trims.silence.owner.text set from storage blue:data player_name
data modify storage blue:data trims.silence.owner.color set value "#3842Cf"
playsound block.sculk_shrieker.shriek player @a ~ ~ ~ 2 1.5
particle sculk_charge_pop ~ ~0.9 ~ 0.1 0.1 0.1 0.25 100 force
particle sculk_soul ~ ~0.9 ~ 0.1 0.1 0.1 0.2 100 force
effect give @a[tag=!blue.tr.silence,distance=..8] darkness 9 0 true
execute as @e[type=!#blue:tr/no_effects,tag=!blue.tr.silence,distance=0.01..10] run damage @s 20 blue:tr/vortex by @a[tag=blue.tr.silence,limit=1]
effect give @s darkness 2 0 true