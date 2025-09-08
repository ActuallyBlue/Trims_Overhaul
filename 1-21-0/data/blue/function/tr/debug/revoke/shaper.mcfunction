execute unless score #.drop_temp blue.misc matches 1001 run tellraw @a [{"text":"- ","color":"dark_gray"},{"translate":"Shaper","color":"#8F8F8F"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.drop_temp blue.misc matches 1001 run tellraw @a ["",{"text":"- ","color":"dark_gray"},{"selector":"@s"}," ",{"translate":"blue.tr.has_lost","fallback":"has lost","color":"gray"}," ",{"translate":"Shaper","color":"#8F8F8F"}]
data modify storage blue:data trims.shaper.owner.color set value dark_gray
data modify storage blue:data trims.shaper.owner.text set value None
scoreboard players set #.tr.shaper_completed blue.config 0
advancement revoke @a only blue:tr/actual/shaper
execute unless entity @a[tag=blue.tr.shaper,limit=1] run scoreboard players set #.revoke_shaper blue.misc 2
execute unless entity @a[tag=blue.tr.shaper,limit=1] run scoreboard players set #.admin_trim_revoke blue.misc 1
tag @a[tag=blue.tr.shaper] remove blue.tr.shaper