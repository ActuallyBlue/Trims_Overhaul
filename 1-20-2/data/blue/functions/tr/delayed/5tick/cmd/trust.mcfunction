execute store success score #.temp blue.misc if entity @s[tag=!blue.tr.trim.wayfinder,tag=!blue.tr.trim.silence,tag=!blue.tr.trim.sentry,tag=!blue.tr.trim.raiser,tag=!blue.tr.trim.shaper,tag=!blue.tr.trim.spire,tag=!blue.tr.trim.coast,tag=!blue.tr.trim.snout,tag=!blue.tr.trim.dune,tag=!blue.tr.trim.wild,tag=!blue.tr.trim.tide,tag=!blue.tr.trim.host,tag=!blue.tr.trim.ward,tag=!blue.tr.trim.rib,tag=!blue.tr.trim.vex,tag=!blue.tr.trim.eye]
execute if score #.temp blue.misc matches 1 run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.no_equipped_trim","fallback":"You don't have a trim equipped","color":"gray"}]
execute if score #.temp blue.misc matches 1 run return 0
execute if score #.temp blue.misc matches 0 unless score @s blue.tr.current_trim matches 1.. run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.not_trim_owner","fallback":"You aren't the owner of this trim","color":"gray"}]
execute if score #.temp blue.misc matches 0 unless score @s blue.tr.current_trim matches 1.. run return 0
execute store result storage blue:data trims.temp.score int 1 run scoreboard players get @s blue.tr.current_trim
function blue:tr/delayed/5tick/cmd/trust/translate with storage blue:data trims.temp
execute unless score @s TrimCMDs.BLUE matches 1000 store result storage blue:data trims.temp.click int 1 run scoreboard players get @s TrimCMDs.BLUE
execute unless score @s TrimCMDs.BLUE matches 1000 store result score #.link blue.id run scoreboard players remove @s TrimCMDs.BLUE 1000
execute unless score @s TrimCMDs.BLUE matches 1000 as @a[predicate=blue:shared/id_link,limit=1] run function blue:tr/delayed/5tick/cmd/trust/change with storage blue:data trims.temp
execute unless score @s TrimCMDs.BLUE matches 1000 run return 0
playsound ui.button.click player @s 0 -128 0 0 2 0.75
data remove storage blue:data trims.display
execute store result score #.players blue.misc if entity @a
function blue:tr/delayed/5tick/cmd/trust/pre with storage blue:data trims.temp
execute unless score #.players blue.misc >= #.tr.trust_compact blue.config run tellraw @s [{"text":"-- -- -- -- -- -- -- -- -- -- -- -- -- --\n","color":"gray"},{"storage":"blue:data","nbt":"trims.display[][]","separator":"\n","interpret":true},"\n-- -- -- -- -- -- -- -- -- -- -- -- -- --"]
execute if score #.players blue.misc >= #.tr.trust_compact blue.config run tellraw @s [{"text":"-- -- -- -- -- -- -- -- -- -- -- -- -- --\n","color":"gray"},{"storage":"blue:data","nbt":"trims.display[][]","separator":{"text":", ","color":"gray"},"interpret":true},"\n-- -- -- -- -- -- -- -- -- -- -- -- -- --"]