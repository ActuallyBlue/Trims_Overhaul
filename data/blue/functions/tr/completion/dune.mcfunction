tag @s add blue.tr.dune
advancement grant @s only blue:tr/trust dune
advancement grant @a only blue:tr/display/dune
scoreboard players set @s blue.tr.desert_time 0
scoreboard players set #.tr.dune_completed blue.config 1
advancement revoke @s only blue:tr/quests/dune
scoreboard objectives add blue.tr.mined_sand mined:sand
data modify storage blue:trims logs.append.trim set value {"translate":"Dune","color":"#E7C547"}
function blue:tr/completion/z/setup
data modify storage blue:trims dune.owner.text set from storage blue:shared player_name
data modify storage blue:trims dune.owner.color set value "#E7C547"
execute if score #.tr.armor_ownership blue.config matches 1 run return 0
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#E7C547"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Dune","color":"#E7C547"}]
function blue:tr/delayed/cmd/msg/dune
scoreboard players set #.template_loot blue.misc 4
loot spawn ~ ~0.5 ~ loot blue:tr/dune
scoreboard players set #.template_loot blue.misc 1
summon falling_block ~0.35 ~ ~0.35 {Tags:["blue.tr.dune.block"],BlockState:{Name:sand},Motion:[0.175,0.5,0.175],DropItem:0b}
summon falling_block ~0.35 ~ ~-0.35 {Tags:["blue.tr.dune.block"],BlockState:{Name:sand},Motion:[0.175,0.5,-0.175],DropItem:0b}
summon falling_block ~-0.35 ~ ~-0.35 {Tags:["blue.tr.dune.block"],BlockState:{Name:sand},Motion:[-0.175,0.5,-0.175],DropItem:0b}
summon falling_block ~-0.35 ~ ~0.35 {Tags:["blue.tr.dune.block"],BlockState:{Name:sand},Motion:[-0.175,0.5,0.175],DropItem:0b}
playsound block.suspicious_gravel.place player @a ~ ~ ~ 2 0.5
function blue:tr/completion/z/sand
schedule function blue:tr/effects/dune/raisure/loop 2t
particle falling_dust sand ~ ~1 ~ 3 3 3 0 480