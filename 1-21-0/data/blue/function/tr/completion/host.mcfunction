execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#A34646"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Host","color":"#A34646"}]
tag @s add blue.tr.host
advancement grant @s only blue:tr/trust host
advancement grant @a only blue:tr/actual/host
scoreboard players set @s blue.tr.villagers_cured 0
scoreboard players set #.tr.host_completed blue.config 1
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Host","color":"#A34646"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/host
loot give @s loot blue:tr/host
scoreboard players reset #.host_stored blue.misc
execute store result score #.temp blue.misc run clear @s host_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.host_stored blue.misc 4
data modify storage blue:data trims.host.owner.text set from storage blue:data player_name
data modify storage blue:data trims.host.owner.color set value "#A34646"
execute at @e[type=!#blue:tr/no_effects,tag=!smithed.strict,distance=0.01..12,sort=random,limit=1] run summon marker ~ ~ ~ {UUID:[I;-1318907857,11,0,1]}
execute at b163102f-0-b-0-1 as @e[type=!#blue:tr/no_effects,tag=!smithed.strict,distance=..0.01,limit=1] at @p[tag=blue.tr.host] run tp ~ ~ ~
execute at b163102f-0-b-0-1 run tp ~ ~ ~
execute at @s run playsound entity.evoker.cast_spell player @a ~ ~ ~ 2 1.25
execute at @s run particle damage_indicator ~ ~1 ~ 0.1 0.1 0.1 3 320
kill b163102f-0-b-0-1