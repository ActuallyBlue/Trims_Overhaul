execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#4B885B"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Sentry","color":"#4B885B"}]
tag @s add blue.tr.sentry
advancement grant @s only blue:tr/trust sentry
advancement grant @a only blue:tr/actual/sentry
scoreboard players set @s blue.tr.raids_won 0
scoreboard players set #.tr.sentry_completed blue.config 1
advancement revoke @s only blue:tr/quests/sentry
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Sentry","color":"#4B885B"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/sentry
loot give @s loot blue:tr/sentry
scoreboard players reset #.sentry_stored blue.misc
execute store result score #.temp blue.misc run clear @s sentry_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.sentry_stored blue.misc 4
data modify storage blue:data trims.sentry.owner.text set from storage blue:data player_name
data modify storage blue:data trims.sentry.owner.color set value "#4B885B"
playsound item.goat_horn.sound.0 player @a ~ ~ ~ 1.5 0.9
playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 1.6 1.5
playsound entity.dragon_fireball.explode player @a ^ ^ ^2 1.5 1.5
playsound entity.firework_rocket.blast player @a ^ ^ ^2 1.5 0.5
playsound entity.firework_rocket.launch player @a ^ ^ ^5 1 1.4
particle happy_villager ~ ~1 ~ 5 2.5 5 0 400
particle enchanted_hit ~ ~1 ~ 2 2.5 2 0.2 200
effect give @s hero_of_the_village 180 4 true
scoreboard players set #.temp blue.misc 500
loot spawn ~ ~1 ~ loot blue:tr/z/emeralds