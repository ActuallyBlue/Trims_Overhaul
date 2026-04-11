tag @s add blue.tr.vex
advancement grant @s only blue:tr/trust vex
advancement grant @a only blue:tr/display/vex
scoreboard players set @s blue.tr.mobs_killed 0
scoreboard players set #.tr.vex_completed blue.config 1
data modify storage blue:trims logs.append.trim set value {"translate":"Vex","color":"#CFC6A5"}
function blue:tr/completion/z/setup
data modify storage blue:trims vex.owner.text set from storage blue:shared player_name
data modify storage blue:trims vex.owner.color set value "#CFC6A5"
execute if score #.tr.armor_ownership blue.config matches 1 run return 0
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#CFC6A5"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Vex","color":"#CFC6A5"}]
function blue:tr/delayed/cmd/msg/vex
scoreboard players set #.template_loot blue.misc 4
loot spawn ~ ~0.5 ~ loot blue:tr/vex
scoreboard players set #.template_loot blue.misc 1
playsound entity.vex.death player @a ~ ~ ~ 2 1
playsound entity.vex.death player @a ~ ~ ~ 2 0.5
playsound entity.vex.charge player @a ~ ~ ~ 2 0.5
playsound entity.allay.ambient_with_item player @a[x=0] ~ ~ ~ 3 2
particle dust 0.81 0.78 0.65 1 ~ ~1 ~ 0.1 0.1 0.1 0.25 340
effect give @s strength 2 1 true
effect give @s speed 1 1 true