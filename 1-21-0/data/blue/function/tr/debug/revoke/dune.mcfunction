execute unless score #.drop_temp blue.misc matches 1001 run tellraw @a [{"text":"- ","color":"dark_gray"},{"translate":"Dune","color":"#E7C547"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.drop_temp blue.misc matches 1001 run tellraw @a ["",{"text":"- ","color":"dark_gray"},{"selector":"@s"}," ",{"translate":"blue.tr.has_lost","fallback":"has lost","color":"gray"}," ",{"translate":"Dune","color":"#E7C547"}]
data modify storage blue:data trims.dune.owner.color set value dark_gray
data modify storage blue:data trims.dune.owner.text set value None
scoreboard players set #.tr.dune_completed blue.config 0
advancement revoke @a only blue:tr/actual/dune
execute unless entity @a[tag=blue.tr.dune,limit=1] run scoreboard players set #.revoke_dune blue.misc 2
execute unless entity @a[tag=blue.tr.dune,limit=1] run scoreboard players set #.admin_trim_revoke blue.misc 1
tag @a[tag=blue.tr.dune] remove blue.tr.dune