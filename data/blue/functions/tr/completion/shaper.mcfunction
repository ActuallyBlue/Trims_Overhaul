execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#8F8F8F"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Shaper","color":"#8F8F8F"}]
tag @s add blue.tr.shaper
advancement grant @s only blue:tr/trust shaper
advancement grant @a only blue:tr/actual/shaper
scoreboard players set @s blue.tr.explosions_survived 0
scoreboard players set #.tr.shaper_completed blue.config 1
advancement revoke @s only blue:tr/quests/shaper_multi
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Shaper","color":"#8F8F8F"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/shaper
loot give @s loot blue:tr/shaper
scoreboard players reset #.shaper_stored blue.misc
execute store result score #.temp blue.misc run clear @s shaper_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.shaper_stored blue.misc 4
data modify storage blue:data trims.shaper.owner.text set from storage blue:data player_name
data modify storage blue:data trims.shaper.owner.color set value "#8F8F8F"
playsound entity.tnt.primed player @a[distance=..20] ~ ~ ~ 2.5 1.4
playsound item.flintandsteel.use player @a ~ ~ ~ 0.6 0.5
playsound block.lava.pop player @a ~ ~ ~ 1 0.5
schedule function blue:tr/completion/z/boom 15t
particle smoke ~ ~1 ~ 0.3 0.2 0.3 0.1 80
particle lava ~ ~1 ~ 0.3 0.2 0.3 0 8