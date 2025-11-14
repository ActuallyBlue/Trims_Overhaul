tag @s add blue.tr.raiser
advancement grant @s only blue:tr/trust raiser
advancement grant @a only blue:tr/display/raiser
scoreboard players set @s blue.tr.items_enchanted 0
scoreboard players set #.tr.raiser_completed blue.config 1
advancement revoke @s only blue:tr/quests/raiser
data modify storage blue:data trims.logs.append.trim set value {"translate":"Raiser","color":"#95B623"}
function blue:tr/completion/z/setup
data modify storage blue:data trims.raiser.owner.text set from storage blue:data player_name
data modify storage blue:data trims.raiser.owner.color set value "#95B623"
execute if score #.tr.armor_ownership blue.config matches 1 run return fail
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#95B623"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Raiser","color":"#95B623"}]
function blue:tr/delayed/cmd/msg/raiser
loot give @s loot blue:tr/raiser
scoreboard players reset #.raiser_stored blue.misc
execute store result score #.temp blue.misc run clear @s raiser_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.raiser_stored blue.misc 4
effect give @s haste 7 5 true
effect give @s speed 7 0 true
effect give @s speed 6 1 true
effect give @s speed 5 2 true
effect give @s speed 3 3 true
effect give @s speed 2 4 true
effect give @s speed 1 5 true
effect give @s strength 7 3 true
xp add @s 1000 points
playsound block.enchantment_table.use player @a ~ ~ ~ 2.5 0.6
particle instant_effect ~ ~0.5 ~ 2.5 2 2.5 0.3 320
particle effect ~ ~0.5 ~ 2.5 2 2.5 0.3 320